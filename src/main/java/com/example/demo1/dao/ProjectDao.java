package com.example.demo1.dao;

import com.example.demo1.entity.Project;
import com.example.demo1.util.ResponseData;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.data.domain.Pageable;
import java.util.List;

/**
 * (Project)表数据库访问层
 *
 * @author makejava
 * @since 2022-03-30 09:44:27
 */
public interface ProjectDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Project queryById(Long id);

    /**
     * 查询指定行数据
     *
     * @param project 查询条件
     * @param pageable         分页对象
     * @return 对象列表
     */
    List<Project> queryAllByLimit(Project project, @Param("pageable") Pageable pageable);

    /**
     * 统计总行数
     *
     * @param project 查询条件
     * @return 总行数
     */
    long count(Project project);

    /**
     * 新增数据
     *
     * @param project 实例对象
     * @return 影响行数
     */
    int insert(Project project);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<Project> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<Project> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<Project> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<Project> entities);

    /**
     * 修改数据
     *
     * @param project 实例对象
     * @return 影响行数
     */
    int update(Project project);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Long id);

    /**
     * 查询全部项目信息包包括项目的图片
     * @param start 从多少条开始
     * @param limit 一共查多少
     * @return ResponseData
     */
    List<Project> getProInfos(@Param("start") int start, @Param("limit") int limit);

    /**
     * 根据产品的id查询产品的详情
     * @param id
     * @return 一个项目详情
     */
    Project getProInfoById(Long id);

    /**
     * 根据产品id查询订单订单页面所需要的数据：imageurl、商品名称、项目名称、服务时间
     * @param id 产品id
     * @return 实体(包括商家的部分信息)
     */
    Project getBusinessAndProById(Long id);

    /**
     * 查询项目的总条数
     * @return 有多少个项目
     */
    Long queryCount();


    /**
     * 根据商品分类id查询项目信息包括项目图片
     * @param typeid typeid
     * @return ResponesData
     */
    List<Project> getProSortDataByTypeId(Long typeid);

    /**
     * 通过项目名获取项目id
     * */
    List<Project> getProInfosByProName(String proname);

    /**
     * 通过图片id获取项目id
     * */
    String getProInfoByImgid(String imageid);
}

