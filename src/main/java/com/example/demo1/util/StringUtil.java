package com.example.demo1.util;

public class StringUtil {
    public static boolean isNull(String str){
        //字符串为空
        if(str == null){
            return true;
        }

        String trim = str.trim();//去除空格
        if("".equals(trim)){//判断是否为空
            return true;
        }
        return false;
    }
}
