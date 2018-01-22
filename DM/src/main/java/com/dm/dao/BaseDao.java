package com.dm.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * Created by Administrator on 2017/11/1.
 */
@Repository
public class BaseDao {

    @Resource
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    //获取会话
    public Session getSession(){
        return sessionFactory.getCurrentSession();
    }


    //分页查询对象列表
//    public List findObjectList(String hql,int start,int row){
//        try {
//            Query query = getSession().createQuery(hql);
//            query.setFirstResult(start);
//            query.setMaxResults(row);
//            return query.list();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return null;
//    }
}
