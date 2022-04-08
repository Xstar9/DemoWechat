package com.example.demo1.service;

import com.example.demo1.entity.Project;
import com.example.demo1.util.ResponseData;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

/**
 * (Project)表服务接口
 *
 * @author makejava
 * @since 2022-03-30 09:44:27
 */
public interface ProjectService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Project queryById(Long id);

    /**
     * 分页查询
     *
     * @param project 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    Page<Project> queryByPage(Project project, PageRequest pageRequest);

    /**
     * 新增数据
     *
     * @param project 实例对象
     * @return 实例对象
     */
    Project insert(Project project);

    /**
     * 修改数据
     *
     * @param project 实例对象
     * @return 实例对象
     */
    Project update(Project project);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Long id);

    /**
     * 查询全部项目信息(包括项目的图片)
     * @return ResponseData
     */
    ResponseData getProInfos(int start, int limit);

    /**
     * 根据产品的id查询产品的详情
     * @param id
     * @return ResponseData
     */
    ResponseData getProInfoById(Long id);

    /**
     * 根据产品id查询订单订单页面所需要的数据：imageurl、商品名称、项目名称、服务时间
     * @param id 产品id
     * @return ResponseData
     */
    ResponseData getBusinessAndProById(Long id);


    /**
     * 根据产品分类id查询产品详细信息
     * @return ResponesData
     */
    ResponseData getProSortDataByTypeId(Long typeid);

    ResponseData getProInfosByProName(String proname);

    ResponseData getProInfoByImgid(String imageid);
}
