package com.dm.web;

import com.dm.entity.Users;
import com.dm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/1/18.
 */
@Controller
@RequestMapping("loginAction")
public class LoginAction {
    @Resource(name="userService")
    private UserService uservice;
    public void setUservice(UserService uservice) {
        this.uservice = uservice;
    }

    //登录验证
    @RequestMapping("/login")
    public String loginValidate(Users user){
        if(user.getUid().length()>0&&user.getUpwd().length()>0){
            if(uservice.loginUser(user)){
                return "pages/main";
            }
        }
        return "redirect:/index.jsp";
    }
}
