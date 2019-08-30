package com.sh.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sh.entiy.Msg;
import com.sh.entiy.SysUser;
import com.sh.service.SysUserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class SysUserController {


    @Autowired
    private SysUserService sysUserService;


    @RequestMapping("/updatepassword")
    public String updatepassword(SysUser sysUser){

        System.out.println(sysUser);

        //sysUserService.updatepassword(sysUser);
        return "main";
    }

    @RequestMapping("/userlistjson")
    @ResponseBody
    public Msg getjson(@RequestParam(value = "pn",defaultValue = "1")Integer pn)
    {
        PageHelper.startPage(pn,5);
         List<SysUser> userList= sysUserService.selectUserList();
        PageInfo page=new PageInfo(userList,6);

        return Msg.Success().add("pageInfo",page);

    }

    @RequestMapping("/userlist")
    public String userlist(@RequestParam(value = "pn",defaultValue = "1")Integer pn, Model model)
    {
        PageHelper.startPage(pn,5);
        List<SysUser> userList= sysUserService.selectUserList();
        PageInfo page=new PageInfo(userList,6);
        model.addAttribute("pageInfo",page);
        return "user-list";

    }


    @RequestMapping("/user_update")
    public String userupdate(SysUser sysUser)
    {
        System.out.println(sysUser);
        int i=sysUserService.updateByPrimaryKeySelective(sysUser);
        System.out.println(i);
        return "redirect:/userlist";

    }


    @RequestMapping("/go_user_update")
    public String gouserupdate(@RequestParam(value = "userId") Long userId,Model model)
    {
        System.out.println(userId);
        SysUser sysUser=sysUserService.selectByPrimaryKey(userId);
        System.out.println(sysUser);
        model.addAttribute("sysUser",sysUser);

        return "user-update";
    }

    @RequestMapping("/go_user_add")
    public String gouseradd(Model model)
    {
        return "user-add";
    }

    @RequestMapping("/user_add")
    public String useradd(SysUser sysUser)
    {
        System.out.println(sysUser);
        int i = sysUserService.insertUser(sysUser);
        System.out.println(i);

        return "redirect:/userlist";
    }

    @RequestMapping("/user_delete")
    public String userdelete(@Param(value = "userId") Long userId){


        int i = sysUserService.deleteUser(userId);
        System.out.println(i);
        return "redirect:/userlist";
    }






}
