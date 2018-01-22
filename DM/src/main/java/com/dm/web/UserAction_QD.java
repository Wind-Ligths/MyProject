package com.dm.web;

import com.dm.entity.Users;
import com.dm.service.UserService;
import com.dm.util.JsonUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping(path = "/userAction_qd")
public class UserAction_QD {
    @Resource(name="userService")
    private UserService uservice;

    public void setUservice(UserService uservice) {
        this.uservice = uservice;
    }

    //用户界面异步调用该查询所有用户类型的方法
    @RequestMapping("/tofindUserType")
    public List findUserType(){
        return uservice.findUserTypes();
    }

    //查询所有用户
    @RequestMapping(path = "/findUsers")
    public String findUsers(){
        return JsonUtils.getJson(uservice.findUsers(),"yyyy-MM-dd");
    }

    //查询所有用户2
    @RequestMapping(path="/findUsersPro")
    public String findUsersPor(){
        return JsonUtils.getJson(uservice.findUsers2(),"yyyy-MM-dd");
    }

    //删除指定用户
    @RequestMapping(path="/delUser/{uno}")
    public String delUser(@PathVariable int uno){
        if(uservice.delUser(new Users(uno,"","","",null,0))){
            return "true";
        }
        return "false";
    }

//    @RequestMapping(path="/findUserById/{uno}")
//    public String findUserById(@PathVariable int uno){
//        System.out.println(uno);
//        return JsonUtils.getJson(uservice.findUser(uno),"yyyy-MM-dd");
//    }
}
