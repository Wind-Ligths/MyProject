package com.dm.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Administrator on 2018/1/22.
 */
@Entity
@Table(name="docs")
public class Docs implements Serializable{
    private int dno;
    private String dtitle;
    private String dcontent;//文档内容

    public Docs() {
    }

    public Docs(int dno, String dtitle, String dcontent) {
        this.dno = dno;
        this.dtitle = dtitle;
        this.dcontent = dcontent;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getDno() {
        return dno;
    }

    public void setDno(int dno) {
        this.dno = dno;
    }

    public String getDtitle() {
        return dtitle;
    }

    public void setDtitle(String dtitle) {
        this.dtitle = dtitle;
    }

    public String getDcontent() {
        return dcontent;
    }

    public void setDcontent(String dcontent) {
        this.dcontent = dcontent;
    }
}
