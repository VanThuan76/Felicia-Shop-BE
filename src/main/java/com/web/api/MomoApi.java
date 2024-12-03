package com.web.api;
import com.web.config.Environment;
import com.web.constants.LogUtils;
import com.web.constants.RequestType;
import com.web.dto.request.PaymentDto;
import com.web.dto.response.ResponsePayment;
import com.web.entity.Cart;
import com.web.entity.Voucher;
import com.web.exception.MessageException;
import com.web.models.PaymentResponse;
import com.web.models.QueryStatusTransactionResponse;
import com.web.processor.CreateOrderMoMo;
import com.web.processor.QueryTransactionStatus;
import com.web.repository.CartRepository;
import com.web.repository.VoucherRepository;
import com.web.service.CartService;
import com.web.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
@CrossOrigin
public class MomoApi {

    @Autowired
    private CartService cartService;

    @Autowired
    private VoucherRepository voucherRepository;

    @Autowired
    private CartRepository cartRepository;

    @Autowired
    private UserUtils userUtils;

    @PostMapping("/urlpayment")
    public ResponsePayment getUrlPayment(@RequestBody PaymentDto paymentDto){
        LogUtils.init();
        Double totalAmount = cartService.totalAmountCart();
        List<Cart> carts = cartRepository.findByUser(userUtils.getUserWithAuthority().getId());
        for(Cart c : carts){
            if(c.getQuantity() > c.getProduct().getQuantity()){
                throw new MessageException("Sản phẩm "+c.getProduct().getName()+" chỉ còn "+c.getProduct().getQuantity()+" sản phẩm");
            }
        }
        if(paymentDto.getCodeVoucher() != null){
            Optional<Voucher> voucher = findVoucherByCode(paymentDto.getCodeVoucher(), totalAmount);
            if(voucher.isPresent()){
                totalAmount = totalAmount - voucher.get().getDiscount();
            }
        }

        Long td = Math.round(totalAmount);
        String orderId = String.valueOf(System.currentTimeMillis());
        String requestId = String.valueOf(System.currentTimeMillis());
        Environment environment = Environment.selectEnv("dev");
        PaymentResponse captureATMMoMoResponse = null;
        try {
            captureATMMoMoResponse = CreateOrderMoMo.process(environment, orderId, requestId, Long.toString(td), paymentDto.getContent(), paymentDto.getReturnUrl(), paymentDto.getNotifyUrl(), "", RequestType.PAY_WITH_ATM, null);
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("url ====: "+captureATMMoMoResponse.getPayUrl());
        ResponsePayment responsePayment = new ResponsePayment(captureATMMoMoResponse.getPayUrl(),orderId,requestId);
        return responsePayment;
    }


    public Optional<Voucher> findVoucherByCode(String code, Double amount) {
        Optional<Voucher> ex = voucherRepository.findByCode(code);
        if(ex.isEmpty()){
            throw new MessageException("Mã voucher không khả dụng");
        }
        if(ex.get().getBlock() == true){
            throw new MessageException("Mã voucher không thể sử dụng");
        }
        Date now = new Date(System.currentTimeMillis());
        if(!((ex.get().getStartDate().before(now) || ex.get().getStartDate().equals(now))
                && (ex.get().getEndDate().after(now) || ex.get().getEndDate().equals(now)))){
            throw new MessageException("Mã voucher đã hết hạn");
        }
        if(ex.get().getMinAmount() > amount){
            throw new MessageException("Số tiền đơn hàng chưa đủ, hãy mua thêm "+(ex.get().getMinAmount() - amount)+" để được áp dụng voucher");
        }
        return ex;
    }


    @GetMapping("/checkPayment")
    public Integer checkPayment(@RequestParam("orderId") String orderId, @RequestParam("requestId") String requestId) throws Exception {
        Environment environment = Environment.selectEnv("dev");
        QueryStatusTransactionResponse queryStatusTransactionResponse = QueryTransactionStatus.process(environment, orderId, requestId);
        System.out.println("qqqq-----------------------------------------------------------"+queryStatusTransactionResponse.getMessage());
        if(queryStatusTransactionResponse.getResultCode() == 0){
            return 0;
        }
        return 1;
    }
}
