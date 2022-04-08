package com.example.demo1.util;

public class ResponseData {
    private String code;
    private String msg;
    private Object data;
    private Long count;

    public ResponseData(ResponseCode responseCode, Object data) {
        this.code = responseCode.getCode();
        this.msg = responseCode.getMsg();
        this.data = data;
    }

    public ResponseData(ResponseCode responseCode, Object data, Long count) {
        this.code = responseCode.getCode();
        this.msg = responseCode.getMsg();
        this.data = data;
        this.count = count;
    }

    public ResponseData(ResponseCode responseCode) {
        this.code = responseCode.getCode();
        this.msg = responseCode.getMsg();
    }

    public ResponseData() {
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

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }
}
