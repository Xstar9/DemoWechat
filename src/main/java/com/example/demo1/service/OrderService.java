package com.example.demo1.service;

import com.example.demo1.entity.Order;
import com.example.demo1.util.ResponseData;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

/**
 * (Order)表服务接口
 *
 * @author makejava
 * @since 2022-03-30 09:44:27
 */
public interface OrderService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Order queryById(Long id);

    /**
     * 分页查询
     *
     * @param order 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    Page<Order> queryByPage(Order order, PageRequest pageRequest);

    /**
     * 新增数据
     *
     * @param order 实例对象
     * @return 实例对象
     */
    Order insert(Order order);

    /**
     * 修改数据
     *
     * @param order 实例对象
     * @return 实例对象
     */
    Order update(Order order);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Long id);

    /**
     * 创建订单
     * @param order order实体（各种参数）
     * @param token 登录成功以后返回给前端的token
     * @return ResponesData
     */
    ResponseData createOrder(Order order, String token);

    /**
     * 根据订单状态查看个人的订单
     * @param token token
     * @param orderstate 订单状态
     * @return ResponesData
     */
    ResponseData getOrderByState(String token, String orderstate);

    ResponseData getOrderDetailById(Long id);

    ResponseData deleteOrderByID(Long id);
}
