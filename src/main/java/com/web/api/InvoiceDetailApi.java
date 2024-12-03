package com.web.api;

import com.web.dto.response.ProductResponse;
import com.web.entity.InvoiceDetail;
import com.web.repository.InvoiceDetailRepository;
import com.web.repository.InvoiceRepository;
import com.web.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/invoice-detail")
@CrossOrigin
public class InvoiceDetailApi {

    @Autowired
    private InvoiceDetailRepository invoiceDetailRepository;

    @Autowired
    private UserUtils userUtils;

    @GetMapping("/user/find-by-invoice")
    public ResponseEntity<?> findByInvoice(@RequestParam("idInvoice") Long idInvoice){
        List<InvoiceDetail> response = invoiceDetailRepository.findByInvoiceId(idInvoice);
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }
    @GetMapping("/admin/find-by-invoice")
    public ResponseEntity<?> findByInvoiceAdmin(@RequestParam("idInvoice") Long idInvoice){
        List<InvoiceDetail> response = invoiceDetailRepository.findByInvoiceId(idInvoice);
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }
}
