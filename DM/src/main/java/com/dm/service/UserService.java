package com.dm.service;

import com.dm.dao.UserDao;
import com.dm.entity.Users;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

/**
 * 用户服务
 */
@Service("userService")
public class UserService {
    @Resource(name="userDao")
    private UserDao dao;

    public void setDao(UserDao dao) {
        this.dao = dao;
    }

    //添加用户
    public boolean addUser(Users user){
        return dao.addUser(user);
    }

    //删除用户
    public boolean delUser(Users user){
        return dao.delUser(user);
    }

    //更新用户
    public boolean updateUser(Users user){
        return dao.updateUser(user);
    }

    //查询所有用户,按注册日期倒序排序
    public List findUsers(){
        String hql="from Users order by registdate desc";
        return dao.findUsers(hql);
    }

    public List findUsers2(){
        String hql="select u,t.tname from Users u,UserType t where u.utype.tno=t.tno order by u.registdate desc";
        return dao.findUsers(hql);
    }

    //查询指定用户
    public Users findUser(int uno){
        String hql="from Users where uno="+uno;
        return dao.findUser(hql);
    }

    //登录验证
    public boolean loginUser(Users user){
        String hql="from Users where uid='"+user.getUid()+"' and upwd='"+user.getUpwd()+"'";
        if(dao.findUser(hql)==null){
            return false;
        }
        return true;
    }

    //查找所有用户类型
    public List findUserTypes(){
        String hql="from UserType";
        return dao.findUserTypes(hql);
    }
}
