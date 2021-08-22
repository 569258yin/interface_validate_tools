package com.yh.validate.tools.pojo.dto;

import lombok.Data;

@Data
public class MethodConfigDTO {

    private Integer id;
    private String appId;
    private String method;
    private Integer type;
    private String oldHttpType;
    private String oldHttpMethod;
    private String oldHttpUrl;
    private String newHttpType;
    private String newHttpMethod;
    private String newHttpUrl;
    private String status;
}
