package com.yh.validate.tools.controller.view;

import com.yh.validate.tools.pojo.dto.MethodConfigDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("view")
public class ValidationViewController {

    @GetMapping("")
    public ModelAndView index(ModelAndView modelAndView) {
        modelAndView.setViewName("index");
        modelAndView.addObject("configs", getTemplateMethodConfigs());
        return modelAndView;
    }


    public List<MethodConfigDTO> getTemplateMethodConfigs() {
        List<MethodConfigDTO> dtos = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            MethodConfigDTO dto = new MethodConfigDTO();
            dto.setId(i);
            dto.setAppId("int-wcf-cl-vehicle");
            dto.setMethod("int-wcf-cl-vehicle");
            dto.setType("HEAD");
            dto.setOldHttpType("LB");
            dto.setOldHttpMethod("GET");
            dto.setOldHttpUrl("wcf.tuhu.work/Vehicle/GetAllVehicles");
            dto.setNewHttpType("LB");
            dto.setNewHttpMethod("GET");
            dto.setNewHttpUrl("wcf.tuhu.work/Vehicle/GetAllVehicles");
            dto.setStatus("启用");
            dtos.add(dto);
        }
        return dtos;
    }
}
