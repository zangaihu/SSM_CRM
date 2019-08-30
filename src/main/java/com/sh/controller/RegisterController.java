package com.sh.controller;


import com.sh.entiy.SysUser;
import com.sh.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {


    @Autowired
    private RegisterService registerService;

    @RequestMapping("/register")
    public String doRegister(SysUser sysUser){
        System.out.println("register....");
        System.out.println(sysUser);

        int i=registerService.insertRegister(sysUser);
        System.out.println(i);
        return "crm_login";

    }

    @RequestMapping("/goRegister")
    public String goRegister(){

        return "register";
    }
}
