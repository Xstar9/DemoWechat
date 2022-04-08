package com.example.demo1.service.impl;

import com.example.demo1.dao.TestDao;
import com.example.demo1.service.TestService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TestServiceImpl implements TestService {
    @Resource
    private TestDao testDao;

    @Override
    public List queryAll() {

        return testDao.queryAll();
    }
}
