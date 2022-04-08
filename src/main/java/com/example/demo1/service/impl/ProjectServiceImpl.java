package com.example.demo1.service.impl;

import com.example.demo1.dao.ImageDao;
import com.example.demo1.entity.Image;
import com.example.demo1.entity.Project;
import com.example.demo1.dao.ProjectDao;
import com.example.demo1.service.ProjectService;
import com.example.demo1.util.ResponseCode;
import com.example.demo1.util.ResponseData;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Project)表服务实现类
 *
 * @author makejava
 * @since 2022-03-30 09:44:27
 */
@Service("projectService")
public class ProjectServiceImpl implements ProjectService {
    @Resource
    private ProjectDao projectDao;

    @Resource
    private ImageDao imageDao;
    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Project queryById(Long id) {
        return this.projectDao.queryById(id);
    }

    /**
     * 分页查询
     *
     * @param project 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    @Override
    public Page<Project> queryByPage(Project project, PageRequest pageRequest) {
        long total = this.projectDao.count(project);
        return new PageImpl<>(this.projectDao.queryAllByLimit(project, pageRequest), pageRequest, total);
    }

    /**
     * 新增数据
     *
     * @param project 实例对象
     * @return 实例对象
     */
    @Override
    public Project insert(Project project) {
        this.projectDao.insert(project);
        return project;
    }

    /**
     * 修改数据
     *
     * @param project 实例对象
     * @return 实例对象
     */
    @Override
    public Project update(Project project) {
        this.projectDao.update(project);
        return this.queryById(project.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long id) {
        return this.projectDao.deleteById(id) > 0;
    }

    @Override
    public ResponseData getProInfos(int start, int limit) {
        try{
            Long count = projectDao.queryCount();//获取项目的总条数
            List<Project> proInfos = projectDao.getProInfos(start, limit);
            return new ResponseData(ResponseCode.SUCCESS, proInfos, count);
        }catch (Exception e){
            return  new ResponseData(ResponseCode.FAIL);
        }
    }

    @Override
    public ResponseData getProInfoById(Long id) {
        try{
            Project proInfoById = projectDao.getProInfoById(id);
            return new ResponseData(ResponseCode.SUCCESS, proInfoById);
        }catch (Exception e){
            return new ResponseData(ResponseCode.FAIL);
        }
    }

    @Override
    public ResponseData getBusinessAndProById(Long id) {
        try{
            Project businessAndProById = projectDao.getBusinessAndProById(id);
            return new ResponseData(ResponseCode.SUCCESS, businessAndProById);
        }catch (Exception e){
            return new ResponseData(ResponseCode.FAIL);
        }
    }


    @Override
    public ResponseData getProSortDataByTypeId(Long typeid) {
        try{
            List<Project> proInfos = projectDao.getProSortDataByTypeId(typeid);
            return new ResponseData(ResponseCode.SUCCESS,proInfos);
        }catch (Exception e){
            return new ResponseData(ResponseCode.FAIL);
        }
    }

    @Override
    public ResponseData getProInfosByProName(String proname) {
        try {
            List<Project> proInfos = projectDao.getProInfosByProName(proname);
            if (!proInfos.isEmpty()) {
                return new ResponseData(ResponseCode.SUCCESS,proInfos);
            }else{
                return new ResponseData(ResponseCode.SUCCESS03,proInfos);
            }
        }catch (Exception e){
            return new ResponseData(ResponseCode.FAIL);
        }
    }

    @Override
    public ResponseData getProInfoByImgid(String imageid) {
        try {
            String proInfoByImgid = projectDao.getProInfoByImgid(imageid);
            System.out.println(proInfoByImgid);
            return new ResponseData(ResponseCode.SUCCESS,proInfoByImgid);
        }catch (Exception e){
            return new ResponseData(ResponseCode.FAIL);
        }
    }
}
