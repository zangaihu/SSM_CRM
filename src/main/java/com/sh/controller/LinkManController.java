package com.sh.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sh.entiy.Customer;
import com.sh.entiy.LinkMan;
import com.sh.entiy.Msg;
import com.sh.service.CustomerService;
import com.sh.service.LinkManService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class LinkManController {

    @Autowired
    private LinkManService linkManService;

    @Autowired
    private CustomerService customerService;


    @RequestMapping("/linkman_findall")
    public String getlinkman(Model model,@RequestParam(value = "pn",defaultValue = "1")Integer pn){

        PageHelper.startPage(pn,5);
        List<LinkMan> linkManList = linkManService.findAllLink();
        PageInfo page=new PageInfo(linkManList,6);

        model.addAttribute("pageInfo",page);
        return "linkman-list";
    }


    @RequestMapping("/getlinkselective")
    public String getSelective(@RequestParam(value = "pn",defaultValue = "1")Integer pn,Model model,LinkMan linkMan)
    {
        System.out.println("条件查询");
        System.out.println(linkMan);

        PageHelper.startPage(pn,99);
        List<LinkMan> linkMans = linkManService.getAllLinkManSelective(linkMan);
        for (LinkMan linkMan1 : linkMans) {
            System.out.println(linkMan1);
        }
        PageInfo page=new PageInfo(linkMans,6);
        model.addAttribute("pageInfo",page);


        return "linkman-list";


    }



    @RequestMapping("/linkmanjson")
    @ResponseBody
    public Msg linkmanjson(Model model, @RequestParam(value = "pn",defaultValue = "1")Integer pn){

        PageHelper.startPage(pn,5);
        List<LinkMan> linkManList = linkManService.findAllLink();
        PageInfo page=new PageInfo(linkManList,6);

        model.addAttribute("pageInfo",page);
        return Msg.Success().add("pageInfo",page);
    }


    @RequestMapping("/golinkmanadd")
    public String golinkadd(Model model){

        List<Customer> customerList = customerService.getAllCustomer();
        model.addAttribute("customerList",customerList);
        return "linkman-add";
    }

    @RequestMapping("/linkman_add")
    public String linkmanadd(LinkMan linkMan){

        linkManService.insertSelective(linkMan);
        return "redirect:/linkman_findall?pn=99";
    }

    @RequestMapping("/golinkmanupdate")
    public String goupdate(@RequestParam(value = "lkmId") Long lkmId,Model model){

        List<Customer> customerList = customerService.getAllCustomer();
        LinkMan linkMan = linkManService.selectByLinkID(lkmId);
        model.addAttribute("customerList",customerList);

        model.addAttribute("linkMan",linkMan);
        return "linkman-update";
    }

    @RequestMapping("/golinkmanupdatejson")
    @ResponseBody
    public Msg updatemsg( ){

        List<Customer> customerList = customerService.getAllCustomer();
        LinkMan linkMan = linkManService.selectByLinkID(3l);

        return Msg.Success().add("linkMan",linkMan).add("customerList",customerList);
    }


    @RequestMapping("/linkman_update")
    public String linkmanupdate(LinkMan linkMan){

        int i = linkManService.updateByPrimaryKeySelective(linkMan);

        return "redirect:/linkman_findall";


    }

    @RequestMapping("/linkman_delete")
    @ResponseBody
    public int linkmandelete(@RequestParam(value = "lkmId") Long lkmId){

        int i=linkManService.deleteByPrimaryKey(lkmId);
        return i;
    }
}
