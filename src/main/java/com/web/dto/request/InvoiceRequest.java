package com.web.dto.request;

import com.web.enums.PayType;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class InvoiceRequest {

    private PayType payType;

    private String requestIdMomo;

    private String orderIdMomo;

    private String address;

    private String fullname;

    private String phone;

    private String note;

}
