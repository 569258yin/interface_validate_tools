package com.yh.validate.tools.pojo.dto;

import lombok.Data;

import java.util.List;

@Data
public class PageDTO<T> {
    private Integer totalPages;
    private List<T> content;
    private Boolean hasPrevious;
    private Boolean hasNext;
    private Integer previous;
    private Integer next;
    private Integer first;
    private Integer last;
    /**
     * 当前页码
     */
    private Integer number;

    public PageDTO(List<T> content, Integer currentNum, Integer totalPages) {
        this.totalPages = totalPages;
        this.content = content;
        this.number = currentNum;
        if (currentNum > 1) {
            first = 1;
            previous = currentNum - 1;
            hasPrevious = true;
        } else {
            first = currentNum;
            previous = currentNum;
            hasPrevious = false;
        }
        if (currentNum < totalPages) {
            last = totalPages;
            next = currentNum + 1;
            hasNext = true;
        } else {
            last = totalPages;
            next = currentNum;
            hasNext = false;
        }
    }

    public Boolean hasPrevious() {
        return hasPrevious;
    }

    public Boolean hasNext() {
        return hasNext;
    }
}
