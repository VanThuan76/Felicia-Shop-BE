package com.web.dto.request;

import com.web.entity.Product;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class ProductRequest {

    private Product product;

    private List<String> linkLinkImages = new ArrayList<>();

}
