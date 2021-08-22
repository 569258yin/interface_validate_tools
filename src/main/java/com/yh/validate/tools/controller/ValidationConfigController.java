package com.yh.validate.tools.controller;

import com.yh.validate.tools.pojo.dto.BizResponse;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("config")
public class ValidationConfigController {


    @PostMapping("add")
    public BizResponse add() {

        return BizResponse.SUCCESS;
    }


}
