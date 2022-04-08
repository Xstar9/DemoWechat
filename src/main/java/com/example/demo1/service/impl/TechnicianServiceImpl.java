package com.example.demo1.service.impl;

import com.example.demo1.entity.Technician;
import com.example.demo1.dao.TechnicianDao;
import com.example.demo1.service.TechnicianService;
import com.example.demo1.util.ResponseCode;
import com.example.demo1.util.ResponseData;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import javax.annotation.Resource;

/**
 * (Technician)表服务实现类
 *
 * @author makejava
 * @since 2022-03-30 09:44:28
 */
@Service("technicianService")
public class TechnicianServiceImpl implements TechnicianService {
    @Resource
    private TechnicianDao technicianDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Technician queryById(Long id) {
        return this.technicianDao.queryById(id);
    }

    /**
     * 分页查询
     *
     * @param technician 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    @Override
    public Page<Technician> queryByPage(Technician technician, PageRequest pageRequest) {
        long total = this.technicianDao.count(technician);
        return new PageImpl<>(this.technicianDao.queryAllByLimit(technician, pageRequest), pageRequest, total);
    }

    /**
     * 新增数据
     *
     * @param technician 实例对象
     * @return 实例对象
     */
    @Override
    public Technician insert(Technician technician) {
        this.technicianDao.insert(technician);
        return technician;
    }

    /**
     * 修改数据
     *
     * @param technician 实例对象
     * @return 实例对象
     */
    @Override
    public Technician update(Technician technician) {
        this.technicianDao.update(technician);
        return this.queryById(technician.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long id) {
        return this.technicianDao.deleteById(id) > 0;
    }

    /**
     * 查询技师的详细
     * @return ResponseData
     */
    @Override
    public ResponseData getTecInfo() {
        return new ResponseData(ResponseCode.SUCCESS, technicianDao.getTecInfo());
    }
}
