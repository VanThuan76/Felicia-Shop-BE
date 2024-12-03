package com.web.api;

import com.web.entity.Category;
import com.web.entity.Voucher;
import com.web.exception.MessageException;
import com.web.repository.InvoiceRepository;
import com.web.repository.VoucherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.sql.Date;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/voucher")
@CrossOrigin
public class VoucherApi {

    @Autowired
    private VoucherRepository voucherRepository;

    @Autowired
    private InvoiceRepository invoiceRepository;

    @PostMapping("/admin/create")
    public ResponseEntity<?> save(@RequestBody Voucher voucher){
        Optional<Voucher> ex = voucherRepository.findByCode(voucher.getCode());
        if(ex.isPresent()){
            throw new MessageException("Mã voucher đã tồn tại");
        }
        Voucher result = voucherRepository.save(voucher);
        return new ResponseEntity<>(result, HttpStatus.CREATED);
    }

    @PostMapping("/admin/update")
    public ResponseEntity<?> update(@RequestBody Voucher voucher){
        Optional<Voucher> ex = voucherRepository.findByCode(voucher.getCode());
        if(ex.isPresent()){
            if(ex.get().getId() != voucher.getId()){
                throw new MessageException("Mã voucher đã tồn tại");
            }
        }
        Voucher result = voucherRepository.save(voucher);
        return new ResponseEntity<>(result, HttpStatus.CREATED);
    }

    @DeleteMapping("/admin/delete")
    public ResponseEntity<?> delete(@RequestParam("id") Long id){
        invoiceRepository.setNullVoucher(id);
        voucherRepository.deleteById(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @DeleteMapping("/admin/block-or-unblock")
    public ResponseEntity<?> block(@RequestParam("id") Long id){
        Optional<Voucher> ex = voucherRepository.findById(id);
        if(ex.isEmpty()){
            throw new MessageException("Not found");
        }
        if (ex.get().getBlock() == true) {
            ex.get().setBlock(false);
        } else {
            ex.get().setBlock(true);
        }
        return new ResponseEntity<>(HttpStatus.OK);
    }


    @GetMapping("/admin/findAll-list")
    public ResponseEntity<?> findAllList(@RequestParam(value = "start", required = false) Date start,
                                     @RequestParam(value = "end", required = false) Date end){
        if(start == null || end == null){
            start = Date.valueOf("2000-01-01");
            end = Date.valueOf("2200-01-01");
        }
        System.out.println(start);
        System.out.println(end);
        List<Voucher> list = voucherRepository.findByDate(start,end);
        return new ResponseEntity<>(list,HttpStatus.OK);
    }

    @GetMapping("/admin/findById")
    public ResponseEntity<?> findById(@RequestParam("id") Long id){
        Optional<Voucher> result = voucherRepository.findById(id);
        return new ResponseEntity<>(result.get(),HttpStatus.OK);
    }

    @GetMapping("/public/findByCode")
    public ResponseEntity<?> findById(@RequestParam("code") String code, @RequestParam("amount") Double amount){
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
        return new ResponseEntity<>(ex.get(),HttpStatus.OK);
    }
}
