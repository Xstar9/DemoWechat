package com.example.demo1.controller;

import com.example.demo1.entity.Project;
import com.example.demo1.service.ProjectService;
import com.example.demo1.util.ResponseData;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Project)表控制层
 *
 * @author makejava
 * @since 2022-03-30 09:44:27
 */
@RestController
@RequestMapping("project")
public class ProjectController {
    /**
     * 服务对象
     */
    @Resource
    private ProjectService projectService;

    /**
     * 分页查询
     *
     * @param project 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    @GetMapping
    public ResponseEntity<Page<Project>> queryByPage(Project project, PageRequest pageRequest) {
        return ResponseEntity.ok(this.projectService.queryByPage(project, pageRequest));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public ResponseEntity<Project> queryById(@PathVariable("id") Long id) {
        return ResponseEntity.ok(this.projectService.queryById(id));
    }

    /**
     * 新增数据
     *
     * @param project 实体
     * @return 新增结果
     */
    @PostMapping
    public ResponseEntity<Project> add(Project project) {
        return ResponseEntity.ok(this.projectService.insert(project));
    }

    /**
     * 编辑数据
     *
     * @param project 实体
     * @return 编辑结果
     */
    @PutMapping
    public ResponseEntity<Project> edit(Project project) {
        return ResponseEntity.ok(this.projectService.update(project));
    }

    /**
     * 删除数据
     *
     * @param id 主键
     * @return 删除是否成功
     */
    @DeleteMapping
    public ResponseEntity<Boolean> deleteById(Long id) {
        return ResponseEntity.ok(this.projectService.deleteById(id));
    }

    //定义查询所有项目信息的接口,page表示第几页，limit表示一页有多少条数据
    @GetMapping("/getProInfos")
    public ResponseData getProInfos(int page, int limit){
        //第一页有10条则从0开始到9；第二页有10条，则从10开始到19...
        int start = (page - 1) * limit;//每一页开始的位置
        ResponseData proInfos = projectService.getProInfos(start, limit);
        return proInfos;
    }

    //通过项目的id获取项目的详情
    @GetMapping("/getProInfoById")
    public ResponseData getProInfoById(Long id){
        return projectService.getProInfoById(id);
    }

    /**
     * 根据产品id查询订单订单页面所需要的数据：imageurl、商品名称、项目名称、服务时间
     * @param id 产品id
     * @return ResponseData
     */
    @GetMapping("/getBusinessAndProById")
    public ResponseData getBusinessAndProById(Long id){
        return projectService.getBusinessAndProById(id);
    }

    @GetMapping("/getProInfosByProName")
    public ResponseData getProInfosByProName(String proname){
        return projectService.getProInfosByProName(proname);
    }

    @GetMapping("/getProInfoByImgid")
    public ResponseData getProInfoByImgid(String imageid){
        return projectService.getProInfoByImgid(imageid);
    }

    @GetMapping("/getProSortDataByTypeId")
    public ResponseData getProSortDataByTypeId(Long typeid) { return projectService.getProSortDataByTypeId(typeid);
    }
}

