package com.dm.web;

import com.dm.entity.Users;
import com.dm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/1/21.
 */
@Controller
@RequestMapping("/userAction")
public class UserAction {
    @Resource(name="userService")
    private UserService uservice;

    public void setUservice(UserService uservice) {
        this.uservice = uservice;
    }

    @RequestMapping("/addUser")
    public String addUser(RedirectAttributes attr, Users user){
        if(user!=null&&uservice.addUser(user)){
            attr.addAttribute("msg","1");
            return "redirect:/pages/regist.jsp";
        }
        attr.addAttribute("msg","-1");
        return "redirect:/pages/regist.jsp";
    }

    @RequestMapping("/editUser")
    public String editUser(RedirectAttributes attr,Users user){
        if(uservice.updateUser(user)){
            attr.addAttribute("status","2");
            return "redirect:/pages/editUser.jsp";
        }
        attr.addAttribute("status","-2");
        return "redirect:/pages/editUser.jsp";
    }

    @RequestMapping(path="/findUserById/{uno}")
    public String findUserById(@PathVariable int uno,Model m){
        m.addAttribute("user",uservice.findUser(uno));
        m.addAttribute("utypes",uservice.findUserTypes());
        return "pages/editUser";
    }


}
