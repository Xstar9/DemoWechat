package com.example.demo1.util;

public enum ResponseCode {
    /**
     * 详情描述
     */
    SUCCESS("0001","请求成功"),
    SUCCESS01("0002","注册成功"),
    SUCCESS02("0003","登录成功"),
    SUCCESS03("0004","返回数据为空"),
    FAIL("9999","网络错误"),
    ERROR01("9998", "用户名为空"),
    ERROR02("9997","手机号为空"),
    ERROR03("9996","密码为空"),
    ERROR04("9995","用户已被注册"),
    ERROR05("9994","账号或密码错误"),
    ERROR06("9993","信息填写不完全");
    private String code;
    private String msg;

    ResponseCode(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    ResponseCode() {
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
