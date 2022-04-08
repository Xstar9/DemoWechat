package com.example.demo1.service.impl;

import com.example.demo1.dao.UserDao;
import com.example.demo1.entity.Order;
import com.example.demo1.dao.OrderDao;
import com.example.demo1.service.OrderService;
import com.example.demo1.util.ResponseCode;
import com.example.demo1.util.ResponseData;
import com.example.demo1.util.StringUtil;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * (Order)表服务实现类
 *
 * @author makejava
 * @since 2022-03-30 09:44:27
 */
@Service("orderService")
public class OrderServiceImpl implements OrderService {
    @Resource
    private OrderDao orderDao;

    @Resource
    private UserDao userDao;
    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Order queryById(Long id) {
        return this.orderDao.queryById(id);
    }

    /**
     * 分页查询
     *
     * @param order 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    @Override
    public Page<Order> queryByPage(Order order, PageRequest pageRequest) {
        long total = this.orderDao.count(order);
        return new PageImpl<>(this.orderDao.queryAllByLimit(order, pageRequest), pageRequest, total);
    }

    /**
     * 新增数据
     *
     * @param order 实例对象
     * @return 实例对象
     */
    @Override
    public Order insert(Order order) {
        this.orderDao.insert(order);
        return order;
    }

    /**
     * 修改数据
     *
     * @param order 实例对象
     * @return 实例对象
     */
    @Override
    public Order update(Order order) {
        this.orderDao.update(order);
        return this.queryById(order.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long id) {
        return this.orderDao.deleteById(id) > 0;
    }

    @Override
    public ResponseData createOrder(Order order, String token) {
       //非空判断
        String username = order.getUsername();
        String usertell = order.getUsertell();
        String makedate = order.getMakedate();
        if(StringUtil.isNull(username) || StringUtil.isNull(usertell)||makedate.contains("选择")){
            return new ResponseData(ResponseCode.ERROR06);
        }
        try{
            //根据token获取openid
            String openid = userDao.queryOpenidByToken(token);

            //下单时间
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String placedate = simpleDateFormat.format(new Date());

            //赋值openid，下单时间，订单状态
            order.setOpenid(openid);
            order.setPlacedate(placedate);
            order.setOrderstate("0");
            //生成订单
            orderDao.insert(order);
            return new ResponseData(ResponseCode.SUCCESS);
        }catch (Exception e){
            return new ResponseData(ResponseCode.FAIL);
        }
    }

    @Override
    public ResponseData getOrderByState(String token, String orderstate) {
        //根据token查询openid
        String openid = userDao.queryOpenidByToken(token);
        //根据openid和orderstate订单状态查询指定订单
        List<Order> orders = orderDao.queryOrder(openid, orderstate);

        return new ResponseData(ResponseCode.SUCCESS, orders);
    }

    @Override
    public ResponseData getOrderDetailById(Long id) {
        try{
            Order order = orderDao.queryById(id);
            return new ResponseData(ResponseCode.SUCCESS,order);
        }catch (Exception e){
            return new ResponseData(ResponseCode.FAIL);
        }
    }

    @Override
    public ResponseData deleteOrderByID(Long id) {
        try{
            orderDao.deleteById(id);
            return new ResponseData(ResponseCode.SUCCESS);
        }catch (Exception e){
            return new ResponseData(ResponseCode.FAIL);
        }
    }
}
