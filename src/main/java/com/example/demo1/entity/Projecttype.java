package com.example.demo1.entity;

import java.io.Serializable;

/**
 * (Projecttype)实体类
 *
 * @author makejava
 * @since 2022-03-30 09:44:28
 */
public class Projecttype implements Serializable {
    private static final long serialVersionUID = -91679270970403135L;
    /**
     * 项目类型id
     */
    private Long id;
    /**
     * 项目类型
     */
    private String name;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}

