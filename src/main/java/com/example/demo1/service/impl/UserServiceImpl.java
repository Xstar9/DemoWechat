package com.example.demo1.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.example.demo1.entity.User;
import com.example.demo1.dao.UserDao;
import com.example.demo1.service.UserService;
import com.example.demo1.util.HttpClientUtil;
import com.example.demo1.util.ResponseCode;
import com.example.demo1.util.ResponseData;
import com.example.demo1.util.StringUtil;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import javax.annotation.Resource;

/**
 * (User)表服务实现类
 *
 * @author makejava
 * @since 2022-03-30 09:44:28
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public User queryById(Long id) {
        return this.userDao.queryById(id);
    }

    /**
     * 分页查询
     *
     * @param user 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    @Override
    public Page<User> queryByPage(User user, PageRequest pageRequest) {
        long total = this.userDao.count(user);
        return new PageImpl<>(this.userDao.queryAllByLimit(user, pageRequest), pageRequest, total);
    }

    /**
     * 新增数据
     *
     * @param user 实例对象
     * @return 实例对象
     */
    @Override
    public User insert(User user) {
        this.userDao.insert(user);
        return user;
    }

    /**
     * 修改数据
     *
     * @param user 实例对象
     * @return 实例对象
     */
    @Override
    public User update(User user) {
        this.userDao.update(user);
        return this.queryById(user.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long id) {
        return this.userDao.deleteById(id) > 0;
    }

    @Override
    public ResponseData userRegister(User user) {
        //1.非空校验
        //用户名
        String username = user.getUsername();
        //手机号
        String phone = user.getPhone();
        //密码
        String password = user.getPassword();

        //调用StringUtil的isNull方法
        //用户名为空
        if (StringUtil.isNull(username)) {
            return new ResponseData(ResponseCode.ERROR01);
        }
        //手机号为空
        if (StringUtil.isNull(phone)) {
            return new ResponseData(ResponseCode.ERROR02);
        }

        //密码为空
        if (StringUtil.isNull(password)) {
            return new ResponseData(ResponseCode.ERROR03);
        }

        //2.判断用户名是否已经被注册
        User userByUserName = userDao.queryUserByUserName(username);
        //用户名已经被注册
        if(userByUserName != null){
            return new ResponseData(ResponseCode.ERROR04);
        }
        //用户未被注册，对密码进行加密

        Md5Hash md5Hash = new Md5Hash(password, "zzj", 10);//获得md5的哈希值
        String newPassword = md5Hash.toString();//转换为字符串,获得加密后的新密码

        user.setPassword(newPassword);//设置密码
        userDao.insert(user);//在用户的Dao层中的中加入用户到数据库
        return new ResponseData(ResponseCode.SUCCESS01);//返回请求

    }

    @Override
    public ResponseData userLogin(String code, String phone, String password) {
        //非空校验
        //手机号为空
        if(StringUtil.isNull(phone)){
            return new ResponseData(ResponseCode.ERROR02);
        }
        //密码为空
        if(StringUtil.isNull(password)){
            return new ResponseData(ResponseCode.ERROR03);
        }

        //将密码转换为密文md5
        Md5Hash md5Hash = new Md5Hash(password, "zzj", 10);//获得md5的哈希值
        String newPassword = md5Hash.toString();

        //如果能拿到user对象，说明手机号和密码正确，否则手机号和密码错误
        User user = userDao.queryUserByPhoneAndPassword(phone,newPassword);

        //没拿到user对象，说明手机号或密码错误
        if(user == null){
            return new ResponseData(ResponseCode.ERROR05);
        }
        try{

            //调用微信的登录接口获取session_key和openid(通过用户的code、appID和appSecret获取)
            String appid = "wxafa15357b2e8ee54";
            String secret = "a5e1dd83b61a3d311a44053b3b1310b6";
            String url ="https://api.weixin.qq.com/sns/jscode2session?appid="
                    +appid+"&secret="+secret+"&js_code="
                    +code+"&grant_type=authorization_code";

            String result = HttpClientUtil.doGet(url);
            System.out.println(result);
            //将获取的session_key和openid转为json文件
            JSONObject jsonResult = (JSONObject) JSONObject.parse(result);
            //取出session_key和openid,openid不变，session_key每隔一段时间就会变化
            String session_key = (String) jsonResult.get("session_key");
            String openid = (String) jsonResult.get("openid");

            //自定义登录状态
            //session_key和openid其中一个发生变化，则token发生变化,token为自定义登录状态
            Md5Hash md5HashToken = new Md5Hash(openid, session_key, 10);
            String token = md5HashToken.toString();

            //将openid和session_key和token更新进数据库
            user.setOpenid(openid);
            user.setSessionkey(session_key);
            user.setToken(token);
            //更新user对象
            userDao.update(user);
            //提示登录成功,并返回一个token
            return new ResponseData(ResponseCode.SUCCESS02,token);
        }catch (Exception e){
            return  new ResponseData(ResponseCode.FAIL);
        }
    }
}
