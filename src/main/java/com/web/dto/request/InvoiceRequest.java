package com.web.dto.request;

import com.web.enums.PayType;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class InvoiceRequest {

    private PayType payType;

    private String requestIdMomo;

    private String orderIdMomo;

    private Long userAddressId;

    private String voucherCode;

    private String note;

}
