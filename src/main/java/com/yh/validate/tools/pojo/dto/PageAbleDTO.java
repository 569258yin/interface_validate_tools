package com.yh.validate.tools.pojo.dto;

import lombok.Data;

@Data
public class PageAbleDTO {
    private Integer pageNumber;

    public PageAbleDTO(Integer pageNumber) {
        this.pageNumber = pageNumber;
    }
}
