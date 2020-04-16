package com.web.controller;

import com.pojo.BookUser;
import com.service.IUserService;
import org.apache.ibatis.annotations.Param;
import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class UserController {
    @Resource
    private IUserService service;
    @RequestMapping("/loginUser")
    public String into(){
        return "login";
    }
    @Test
    @RequestMapping("/loginU")
    public String Login(@Param("name") String name, @Param("password") String password, Model model){
        BookUser user =service.login("aaa","123");
        if (null!=user){
            return "guanli";
        }
        return "error";
    }
}
