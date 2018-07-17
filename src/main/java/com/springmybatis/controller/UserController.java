package com.springmybatis.controller;

import com.springmybatis.model.User;
import com.springmybatis.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping(value="/user")
public class UserController {
    @Resource
    private IUserService userService;

    @RequestMapping(value="/")
    public String portel(){
        return "index01";
    }

    @RequestMapping(value="select")
    public String test(){

        System.out.println("spring mvc hello world!");
            User user= null;
            user = userService.selectByPrimaryKey(2);
            System.out.print(user.getUserName());

        return "/index";
    }

    @RequestMapping(value="selectAll")
    public String selectALL(Model model){


        List<User> list  = userService.selectlistAll();
        System.out.print(list);
        model.addAttribute("List",list);

        return "index01";
    }

    @RequestMapping("insert")
    public String insert(int id,String userName,int age, String password) {
        User user = new User();
        user.setUserName(userName);
        user.setId(id);
        user.setPassword(password);
        user.setAge(age);
        userService.insert(user);
        return "/index01";
    }

    @RequestMapping("edit")
    public String edit(User user) {
        userService.updateByPrimaryKey(user);
        return "/index01";
    }

    @RequestMapping("delete")
    public String delete(int id) {
        userService.deleteByPrimaryKey(id);
        return "/index01";
    }
}
