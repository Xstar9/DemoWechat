package com.example.demo1.dao;

import com.example.demo1.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Pageable;
import java.util.List;

/**
 * (User)表数据库访问层
 *
 * @author makejava
 * @since 2022-03-30 09:44:28
 */
public interface UserDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    User queryById(Long id);

    /**
     * 查询指定行数据
     *
     * @param user 查询条件
     * @param pageable         分页对象
     * @return 对象列表
     */
    List<User> queryAllByLimit(User user, @Param("pageable") Pageable pageable);

    /**
     * 统计总行数
     *
     * @param user 查询条件
     * @return 总行数
     */
    long count(User user);

    /**
     * 新增数据
     *
     * @param user 实例对象
     * @return 影响行数
     */
    int insert(User user);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<User> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<User> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<User> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<User> entities);

    /**
     * 修改数据
     *
     * @param user 实例对象
     * @return 影响行数
     */
    int update(User user);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Long id);

    /**
     * 根据用户名查询是否有当前用户
     *
     * @param username 用户名
     * @return 用户对象(可能为空)
     */
    User queryUserByUserName(String username);

    /**
     * 根据手机号和加密后的密码来查询数据库里是否已存在
     * @param phone 手机号
     * @param newPassword 加密后的密码
     * @return 用户对象(可能为空)
     */
    User queryUserByPhoneAndPassword(@Param("phone") String phone, @Param("newPassword") String newPassword);

    /**
     * 根据用户的token获取该用户的openid
     * @param token token
     * @return openid
     */
    String queryOpenidByToken(String token);
}
