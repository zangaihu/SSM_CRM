package com.sh.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sh.entiy.*;
import com.sh.service.CustomerService;
import com.sh.service.EmployeeBiz;
import com.sh.service.SysUserService;
import com.sh.service.VisitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.UUID;

@Controller
public class VisitController {


    @Autowired
    private VisitService visitService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private SysUserService sysUserService;

    @Autowired
    private EmployeeBiz employeeBiz;

    @RequestMapping("/getvisit")
    public String getvisit(@RequestParam(value = "pn",defaultValue = "1")Integer pn,Model model )
    {
        PageHelper.startPage(pn,5);
        List<SaleVisit> visitList = visitService.selectvisit();
        for (SaleVisit saleVisit : visitList) {
            System.out.println(saleVisit);
        }
        PageInfo page=new PageInfo(visitList,6);
        model.addAttribute("pageInfo",page);

        return "visit-list";
    }

    @RequestMapping("/visitjson")
    @ResponseBody
    public Msg getjson(@RequestParam(value = "pn",defaultValue = "1")Integer pn)
    {
        PageHelper.startPage(pn,5);
        List<SaleVisit> visitList = visitService.selectvisit();
        PageInfo page=new PageInfo(visitList,6);

        return Msg.Success().add("pageInfo",page);

    }


    @RequestMapping("/govisitadd")
    public String govisitadd(Model model){

        List<Customer> customerList = customerService.getAllCustomer();

        //List<SysUser> sysUserList = sysUserService.selectForVisit();

        List<Employee> employeeList = employeeBiz.getAll();
        model.addAttribute("customerList",customerList);
        model.addAttribute("employeeList",employeeList);

        return "visit-add";
    }


    @RequestMapping("/visit_add")
    public String visitadd(SaleVisit saleVisit)
    {
      String uuid= UUID.randomUUID().toString().replaceAll("-","");
        saleVisit.setVisitId(uuid);
        System.out.println("save");
        System.out.println(saleVisit);
        int i=visitService.insertSelective(saleVisit);

        System.out.println(i);
        return "redirect:/getvisit?pn=99";
    }


    @RequestMapping("/deletevisit")
    @ResponseBody
    public int deletevisit(@RequestParam(value = "visitId") String visitId){


        System.out.println(visitId);
        int i = visitService.deleteByPrimaryKey(visitId);
        System.out.println(i);

        return i;
    }

    @RequestMapping("/getvisitselective")
    public String getSelective(@RequestParam(value = "pn",defaultValue = "1")Integer pn,Model model,SaleVisit saleVisit)
    {
        System.out.println(saleVisit);

        PageHelper.startPage(pn,99);
        List<SaleVisit> visitList = visitService.getVisitSelective(saleVisit);
        for (SaleVisit visit : visitList) {
            System.out.println(visit);
        }
        PageInfo page=new PageInfo(visitList,6);
        model.addAttribute("pageInfo",page);


        return "visit-list";


    }

}
