package com.sh.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sh.entiy.BaseDict;
import com.sh.entiy.Customer;
import com.sh.entiy.Msg;
import com.sh.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
@RequestMapping("/cust")
public class CustomerController {

    @Autowired
    private CustomerService customerService;


    /*
    *  拉取客户列表
    *
    *  */
    @RequestMapping("/getall")
    public String getAllCustomer(Model model)
    {
        List<Customer> customers = customerService.getAllCustomer();
        model.addAttribute("customers",customers);
        return "customer-list";
    }


    @RequestMapping("/goCustomerAdd")
    public String goSaveCustomer(Model model){
        /*
        * 1.查询客户来源
        * 2.查询行业
        * 3.查询级别
        * */
        List<BaseDict> sourceList = customerService.getSource();
        List<BaseDict> industryList = customerService.getIndustry();
        List<BaseDict> levelList = customerService.getLevel();
        model.addAttribute("industryList",industryList);
        model.addAttribute("sourceList",sourceList);
        model.addAttribute("levelList",levelList);
        return "customer-add";
    }


    @RequestMapping("/gocustupdate")
    public String gocustupdate(Model model,@RequestParam(value = "custId") Long custId){
        /*
         * 1.查询客户来源
         * 2.查询行业
         * 3.查询级别
         * */
        Customer customer=customerService.selectCustById(custId);
        List<BaseDict> sourceList = customerService.getSource();
        List<BaseDict> industryList = customerService.getIndustry();
        List<BaseDict> levelList = customerService.getLevel();
        model.addAttribute("industryList",industryList);
        model.addAttribute("sourceList",sourceList);
        model.addAttribute("levelList",levelList);
        model.addAttribute("customer",customer);
        return "customer-update";
    }

    //保存客户，完成后跳转至列表页面
    @RequestMapping("/customerAdd")
    public String saveCustomer(Customer customer)
    {
        customerService.customerAdd(customer);
        return "redirect:/cust/getallpages?pn=99";
    }


    @RequestMapping("/customerupdate")
    public String updateCustomer(Customer customer)
    {
        customerService.updateByPrimaryKeySelective(customer);

        return "redirect:/cust/getallpages";
    }


    @RequestMapping("/custjson")
    @ResponseBody
    public Msg getjson(@RequestParam(value = "pn",defaultValue = "1")Integer pn)
    {
        PageHelper.startPage(pn,5);
        List<Customer> customers = customerService.getAllCustomer();
        PageInfo page=new PageInfo(customers,6);

        return Msg.Success().add("pageInfo",page);

    }


    @RequestMapping("/getallpages")
    public String getAllPages(@RequestParam(value = "pn",defaultValue = "1")Integer pn,Model model)
    {
        PageHelper.startPage(pn,5);
        List<Customer> customers = customerService.getAllCustomer();
        PageInfo page=new PageInfo(customers,6);
        model.addAttribute("pageInfo",page);
        model.addAttribute("select",false);
        return "customer-list";


    }

    @RequestMapping("/getselective")
    public String getSelective(@RequestParam(value = "pn",defaultValue = "1")Integer pn,Model model,Customer customer)
    {
        System.out.println("条件查询");
        System.out.println(customer);
        if (customer==null)
        {
            System.out.println("了胡为空");
        }
        PageHelper.startPage(pn,99);
        List<Customer> customers = customerService.getAllCustomerSelective(customer);
        for (Customer customer1 : customers) {
            System.out.println(customer1);
        }
        PageInfo page=new PageInfo(customers,6);
        model.addAttribute("pageInfo",page);
        model.addAttribute("select",true);

        return "customer-list";


    }


    @RequestMapping("/deletecust")
    @ResponseBody
    public int deleteCustomer(@RequestParam(value = "custId") Long custId){

        int i = customerService.deleteByPrimaryKey(custId);
        return i;
    }


    @RequestMapping("/deletallcust")
    @ResponseBody
    public int deteleallcust( int[] ids){


        for (int id : ids) {
            System.out.println(id);
        }

        int i=customerService.deleteAllCust(ids);


        return i;
    }
}
