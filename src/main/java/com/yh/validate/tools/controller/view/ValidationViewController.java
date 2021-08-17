package com.yh.validate.tools.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("view")
public class ValidationViewController {

    @GetMapping("")
    public String index(Map<String, Object> model) {
        return "index";
    }
}
