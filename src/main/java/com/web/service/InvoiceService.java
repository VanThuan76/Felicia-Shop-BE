package com.web.service;

import com.web.config.Environment;
import com.web.dto.request.InvoiceRequest;
import com.web.dto.request.ProductPayment;
import com.web.entity.*;
import com.web.enums.PayType;
import com.web.enums.StatusInvoice;
import com.web.exception.MessageException;
import com.web.models.QueryStatusTransactionResponse;
import com.web.processor.QueryTransactionStatus;
import com.web.repository.*;
import com.web.utils.StatusUtils;
import com.web.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.sql.Date;
import java.sql.Time;
import java.util.List;
import java.util.Optional;

@Component
public class InvoiceService {

    @Autowired
    private InvoiceRepository invoiceRepository;

    @Autowired
    private InvoiceDetailRepository invoiceDetailRepository;

    @Autowired
    private UserUtils userUtils;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private HistoryPayRepository historyPayRepository;

    @Autowired
    private CartRepository cartRepository;

    public void create(InvoiceRequest invoiceRequest) throws Exception {
        Double totalAmount = 0D;
        User user = userUtils.getUserWithAuthority();
        for(Cart p : cartRepository.findByUser(user.getId())){
            totalAmount += p.getProduct().getPrice() * p.getQuantity();
        }
        if(invoiceRequest.getPayType().equals(PayType.MOMO)){
            if(historyPayRepository.findByOrderIdAndRequestId(invoiceRequest.getOrderIdMomo(), invoiceRequest.getRequestIdMomo()).isPresent()){
                // đơn hàng đã được đặt trước đó
                throw new MessageException("Đơn hàng đã được đặt");
            }
            Environment environment = Environment.selectEnv("dev");
            QueryStatusTransactionResponse queryStatusTransactionResponse = QueryTransactionStatus.process(environment, invoiceRequest.getOrderIdMomo(), invoiceRequest.getRequestIdMomo());
            System.out.println("qqqq-----------------------------------------------------------"+queryStatusTransactionResponse.getMessage());
            if(queryStatusTransactionResponse.getResultCode() != 0){
                // chưa thanh toán
                throw new MessageException("Đơn hàng chưa được thanh toán");
            }
        }
        Invoice invoice = new Invoice();
        invoice.setNote(invoiceRequest.getNote());
        invoice.setReceiverName(user.getFullname());
        invoice.setPhone(user.getPhone());
        invoice.setAddress(invoiceRequest.getAddress());
        invoice.setCreatedDate(new Date(System.currentTimeMillis()));
        invoice.setCreatedTime(new Time(System.currentTimeMillis()));
        invoice.setUser(userUtils.getUserWithAuthority());
        invoice.setTotalAmount(totalAmount);
        invoice.setPayType(invoiceRequest.getPayType());
        invoice.setStatusInvoice(StatusInvoice.DANG_CHO_XAC_NHAN);
        Invoice result = invoiceRepository.save(invoice);

        for(Cart p : cartRepository.findByUser(user.getId())){
            InvoiceDetail invoiceDetail = new InvoiceDetail();
            invoiceDetail.setInvoice(result);
            invoiceDetail.setProduct(p.getProduct());
            invoiceDetail.setPrice(p.getProduct().getPrice());
            invoiceDetail.setQuantity(p.getQuantity());
            invoiceDetailRepository.save(invoiceDetail);
        }

        if(invoiceRequest.getPayType().equals(PayType.MOMO)){
            HistoryPay historyPay = new HistoryPay();
            historyPay.setInvoice(result);
            historyPay.setCreatedDate(new Date(System.currentTimeMillis()));
            historyPay.setOrderId(invoiceRequest.getOrderIdMomo());
            historyPay.setRequestId(invoiceRequest.getRequestIdMomo());
            historyPay.setTotalAmount(totalAmount);
            historyPayRepository.save(historyPay);
        }
    }

    public List<Invoice> myInvoice(){
        List<Invoice> list = invoiceRepository.findByUser(userUtils.getUserWithAuthority().getId());
        return list;
    }

    public List<Invoice> allInvoice(){
        List<Invoice> list = invoiceRepository.findAll();
        return list;
    }

}
