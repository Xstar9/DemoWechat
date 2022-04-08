package com.example.demo1.entity;

public class Music {
    private int id;
    private String singer_name;
    private String sing_size;
    private String sing_name;

    public Music(int id, String singer_name, String sing_size, String sing_name) {
        this.id = id;
        this.singer_name = singer_name;
        this.sing_size = sing_size;
        this.sing_name = sing_name;
    }

    public Music() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSinger_name() {
        return singer_name;
    }

    public void setSinger_name(String singer_name) {
        this.singer_name = singer_name;
    }

    public String getSing_size() {
        return sing_size;
    }

    public void setSing_size(String sing_size) {
        this.sing_size = sing_size;
    }

    public String getSing_name() {
        return sing_name;
    }

    public void setSing_name(String sing_name) {
        this.sing_name = sing_name;
    }
}
