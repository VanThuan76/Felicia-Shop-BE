package com.web.dto.response;

import com.web.enums.PayType;
import com.web.enums.StatusInvoice;
import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.sql.Time;

@Getter
@Setter
public class InvoiceResponse {

    private Long id;

    private Date createdDate;

    private Time createdTime;

    private Double totalAmount;

    private String receiverName;

    private String phone;

    private String note;

    private String address;

    private PayType payType;

    private StatusInvoice statusInvoice;

}
