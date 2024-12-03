package com.web.dto.request;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SearchDto {

    private String search;

    private Long category;

    private Double small;

    private Double large;

}
