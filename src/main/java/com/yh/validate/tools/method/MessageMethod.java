package com.yh.validate.tools.method;

import freemarker.template.SimpleScalar;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModelException;

import java.util.List;

public class MessageMethod implements TemplateMethodModelEx {

    @Override
    public Object exec(List arguments) throws TemplateModelException {
        if (arguments != null && arguments.size() > 0) {
            SimpleScalar tag = (SimpleScalar) arguments.get(0);
            if ("page.first".equals(tag.getAsString())) {
                return new SimpleScalar("首页");
            }
            if ("page.last".equals(tag.getAsString())) {
                return new SimpleScalar("最后一页");
            }
            if ("page.previous".equals(tag.getAsString())) {
                return new SimpleScalar("上一页");
            }
            if ("page.next".equals(tag.getAsString())) {
                return new SimpleScalar("下一页");
            }
        }
        return "";
    }
}
