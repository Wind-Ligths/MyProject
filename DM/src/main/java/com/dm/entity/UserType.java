package com.dm.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="usertype")
public class UserType implements Serializable{
    private int tno;
    private String tname;

    public UserType(int tno, String tname) {
        this.tno = tno;
        this.tname = tname;
    }

    public UserType() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getTno() {
        return tno;
    }

    public void setTno(int tno) {
        this.tno = tno;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }
}
