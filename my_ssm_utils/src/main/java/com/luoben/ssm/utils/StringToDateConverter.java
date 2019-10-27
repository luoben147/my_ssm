package com.luoben.ssm.utils;

import org.springframework.core.convert.converter.Converter;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 把字符串转换日期
 */
public class StringToDateConverter implements Converter<String, Date> {

    @Override
    public Date convert(String s) {
        if (s == null) {
            throw new RuntimeException("请您传入数据");
        }
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        try {
            return   df.parse(s);
        } catch (ParseException e) {
            e.printStackTrace();
            throw new RuntimeException("数据类型转换错误");
        }
    }
}
