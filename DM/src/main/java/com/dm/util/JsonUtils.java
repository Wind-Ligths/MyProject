package com.dm.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

import java.text.SimpleDateFormat;

/**
 * Created by Administrator on 2017/12/7.
 */
public class JsonUtils {

    /**
     * 根据传入对象和日期格式转换成JSON字符串
     * @param object
     * @param pattern
     * @return
     */
    public static String getJson(Object object,String pattern){
        ObjectMapper mapper = new ObjectMapper();
        //不使用时间戳的方式
        mapper.configure(SerializationFeature.WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS,false);
        //设置日期格式
        mapper.setDateFormat(new SimpleDateFormat(pattern));
        try {
            return mapper.writeValueAsString(object);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 传入对象使用默认日期格式转化成字符串
     * @param object
     * @return
     */
    public static String getJson(Object object){
        return getJson(object,"yyyy-MM-dd");
    }

}
