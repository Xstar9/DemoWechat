package com.example.demo1.controller;
import com.example.demo1.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
public class Test1 {

    @Autowired
    private TestService testService;

    @GetMapping("/test")
    public List queryAll(){

        return testService.queryAll();
    }
}
