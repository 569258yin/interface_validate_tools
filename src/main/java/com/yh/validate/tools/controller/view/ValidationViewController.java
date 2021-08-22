package com.yh.validate.tools.controller.view;

import com.yh.validate.tools.method.MessageMethod;
import com.yh.validate.tools.pojo.dto.MethodConfigDTO;
import com.yh.validate.tools.pojo.dto.PageAbleDTO;
import com.yh.validate.tools.pojo.dto.PageDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("view")
public class ValidationViewController {

    @GetMapping("")
    public ModelAndView page(ModelAndView modelAndView,
                             @RequestParam(value = "pageNum", required = false) Integer pageNum) {
        if (pageNum == null) {
            pageNum = 1;
        }
        modelAndView.setViewName("index");
        modelAndView.addObject("message", new MessageMethod());
        modelAndView.addObject("page", getPage(pageNum));
        modelAndView.addObject("pageable", new PageAbleDTO(pageNum));
        return modelAndView;
    }

    private PageDTO<MethodConfigDTO> getPage(Integer pageNum) {
        PageDTO<MethodConfigDTO> page = new PageDTO(getTemplateMethodConfigs(), pageNum, 10);
        return page;
    }


    private List<MethodConfigDTO> getTemplateMethodConfigs() {
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
