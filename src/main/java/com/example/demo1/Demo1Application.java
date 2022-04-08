package com.example.demo1;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@MapperScan("com.example.demo1.dao")
public class Demo1Application extends SpringBootServletInitializer {

    /**
     * 重写方法 替代web。xml配置打包成war
     * */
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(Demo1Application.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(Demo1Application.class, args);
    }
}
