package com.yh.validate.tools.pojo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BizResponse<T> {

    public static final BizResponse SUCCESS = new BizResponse(1000,"success","");

    private Integer code;
    private T data;
    private String message;
}
