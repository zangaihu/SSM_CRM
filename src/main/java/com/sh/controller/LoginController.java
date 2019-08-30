package com.sh.controller;

import com.sh.entiy.SysUser;
import com.sh.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;


    @RequestMapping("/Login")
    public String doLogin(String usercode, String password, Model model, HttpSession httpSession){


        System.out.println("Login...");
        SysUser user=loginService.findForLogin(usercode,password);
        System.out.println(user);


        if (usercode=="")
        {
            model.addAttribute("msg","用户名不能为空");
            return "crm_login";
        }
        else if (password==""){
            model.addAttribute("msg","密码不能为空");
            return "crm_login";
        }
        else if(user == null)
        {
            model.addAttribute("msg","用户名或密码错误");
            return "crm_login";

        }else {
            httpSession.setAttribute("existUser",user);
           return "main";
        }

    }

    @RequestMapping("/goLogin")
    public String goLogin()
    {
        return "crm_login";
    }


    @RequestMapping("/loginout")
    public String loginout(HttpSession httpSession)
    {
        httpSession.removeAttribute("existUser");
        return "redirect:/goLogin";
    }



}
