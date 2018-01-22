package com.dm.dao;

import com.dm.entity.Users;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2018/1/17.
 */
@Repository("userDao")
public class UserDao extends BaseDao{
    //添加用户
    public boolean addUser(Users user){
        try {
            getSession().save(user);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    //删除用户[管理员权限]
    public boolean delUser(Users user){
        try {
            getSession().delete(user);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    //更新用户
    public boolean updateUser(Users user){
        try {
            getSession().update(user);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    //查询用户
    public List findUsers(String hql){
        return getSession().createQuery(hql).list();
    }

    //查询指定用户
    public Users findUser(String hql){
        Users user = (Users)getSession().createQuery(hql).list().get(0);
        System.out.println("数据库中数据:"+user.getUid()+","+user.getUpwd());
        if(user!=null){
            return user;
        }
        return null;
    }

    //查找用户类型
    public List findUserTypes(String hql){
        return getSession().createQuery(hql).list();
    }

}
