package com.dm.dao;

import com.dm.entity.Docs;
import org.springframework.stereotype.Repository;

import javax.print.Doc;
import java.util.List;

/**
 * Created by Administrator on 2018/1/22.
 */
@Repository("docDao")
public class DocDao extends BaseDao{
    public boolean addDoc(Docs doc){
        try {
            getSession().save(doc);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    public boolean delDoc(Docs doc){
        try {
            getSession().delete(doc);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateDoc(Docs doc){
        try {
            getSession().update(doc);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    public List findDocs(String hql){
        return getSession().createQuery(hql).list();
    }

}
