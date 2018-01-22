package com.dm.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * 用户实体类
 */
@Entity
@Table(name="users")
public class Users implements Serializable{
    private int uno;//序号  --主键
    private String uid;//用户ID(账号)
    private String uname;//用户姓名
    private String upwd;//用户密码
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date registdate;//注册日期
    private int uage;//用户年龄

    private UserType utype;
    public Users() {
    }

    public Users(int uno, String uid, String uname, String upwd, Date registdate, int uage) {
        this.uno = uno;
        this.uid = uid;
        this.uname = uname;
        this.upwd = upwd;
        this.registdate = registdate;
        this.uage = uage;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getUno() {
        return uno;
    }

    public void setUno(int uno) {
        this.uno = uno;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    @Column(columnDefinition = "date")
    public Date getRegistdate() {
        return registdate;
    }

    public void setRegistdate(Date registdate) {
        this.registdate = registdate;
    }

    public int getUage() {
        return uage;
    }

    public void setUage(int uage) {
        this.uage = uage;
    }

    @ManyToOne
    @JoinColumn(name = "utno")
    public UserType getUtype() {
        return utype;
    }

    public void setUtype(UserType utype) {
        this.utype = utype;
    }
}
