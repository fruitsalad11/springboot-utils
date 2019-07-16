package com.fruitsalad.demo.base;

import com.baomidou.mybatisplus.activerecord.Model;

import java.io.Serializable;

public class BaseEntity<T> extends Model {
    private static final long serialVersionUID = -2010277378626734496L;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
