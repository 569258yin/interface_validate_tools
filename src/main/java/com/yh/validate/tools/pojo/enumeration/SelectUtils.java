package com.yh.validate.tools.pojo.enumeration;

import com.yh.validate.tools.pojo.dto.MethodConfigDTO;

import java.util.ArrayList;
import java.util.List;

public class SelectUtils {




    public static List<SelectDTO> getTypeSelect(MethodConfigDTO methodConfig){
        List<SelectDTO> selects = new ArrayList<>(2);
        selects.add(new SelectDTO(1,"Head"));
        selects.add(new SelectDTO(0,"Url"));
        return selects;
    }
}
