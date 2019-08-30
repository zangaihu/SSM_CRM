package com.sh.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sh.entiy.*;
import com.sh.service.ChanceService;
import com.sh.service.CustomerService;
import com.sh.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

@Controller
public class ChanceController {

    @Autowired
    private ChanceService chanceService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private SysUserService sysUserService;

    @RequestMapping("/chancelistjson")
    @ResponseBody
    public Msg getjson(@RequestParam(value = "pn",defaultValue = "1")Integer pn)
    {
        PageHelper.startPage(pn,7);
        List<SaleChance> chanceList = chanceService.selectAll();
        PageInfo page=new PageInfo(chanceList,6);

        return Msg.Success().add("pageInfo",page);

    }


    @RequestMapping("/chancelist")
    public String getAllPages(@RequestParam(value = "pn",defaultValue = "1")Integer pn,Model model)
    {
        PageHelper.startPage(pn,5);
        List<SaleChance> chanceList = chanceService.selectAll();
        for (SaleChance saleChance : chanceList) {
            System.out.println(saleChance);
        }
        PageInfo page=new PageInfo(chanceList,6);
        model.addAttribute("pageInfo",page);
        List<Customer> customerList = customerService.getAllCustomer();
        List<SysUser> userList = sysUserService.selectUserList();
        model.addAttribute("customerList",customerList);
        model.addAttribute("userList",userList);
        return "chance-list";

    }


    @RequestMapping("/getchanceselective")
    public String getSelective(@RequestParam(value = "pn",defaultValue = "1")Integer pn, Model model, SaleChance saleChance)
    {

        System.out.println(saleChance);

        PageHelper.startPage(pn,99);
        List<SaleChance> chances = chanceService.getAllChanceSelective(saleChance);
        for (SaleChance saleChance1 : chances) {
            System.out.println(saleChance1);
        }
        PageInfo page=new PageInfo(chances,6);
        model.addAttribute("pageInfo",page);
        List<Customer> customerList = customerService.getAllCustomer();
        List<SysUser> userList = sysUserService.selectUserList();
        model.addAttribute("customerList",customerList);
        model.addAttribute("userList",userList);


        return "chance-list";


    }



    @RequestMapping("/gochanceadd")
    public String gochanceadd(Model model)
    {

        List<Customer> customerList = customerService.getAllCustomer();
        List<SysUser> userList = sysUserService.selectUserList();
        model.addAttribute("customerList",customerList);
        model.addAttribute("userList",userList);
        return "chance-add";
    }

    @RequestMapping("/chance_add")
    public String chanceadd(SaleChance saleChance)
    {
        System.out.println(saleChance);
        if (saleChance.getChanLinktime()==null)
        {
            saleChance.setChanLinktime(new Date());
        }
        chanceService.insertSelective(saleChance);
        return "redirect:/chancelist?pn=99";
    }

    @RequestMapping("/chance_update")
    public  String chanceupdate(SaleChance saleChance)
    {
        System.out.println("update...");
        System.out.println(saleChance);
        saleChance.setChanLinktime(new Date());
        chanceService.updateByPrimaryKeySelective(saleChance);

        return "redirect:/chancelist";
    }


    @RequestMapping("/getonechance")
    @ResponseBody
    public Msg getonechance(Long chanId){

        SaleChance chance = chanceService.selectonechance(chanId);

        return Msg.Success().add("chance",chance);
    }

}
