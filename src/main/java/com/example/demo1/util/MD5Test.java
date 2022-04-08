package com.example.demo1.util;

import org.apache.shiro.crypto.hash.Md5Hash;

public class MD5Test {
    public static void main(String[] args){
        Md5Hash md5Hash = new Md5Hash("123456","zzj",10);
        System.out.println(md5Hash.toString());
    }
}
