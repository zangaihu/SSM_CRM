package com.sh.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sh.entiy.Employee;
import com.sh.entiy.Msg;
import com.sh.golabl.Contant;
import com.sh.service.DepartmentBiz;
import com.sh.service.EmployeeBiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller("employeeController")
@RequestMapping("/employee")
public class EmployeeController {
    @Autowired
    private DepartmentBiz departmentBiz;
    @Autowired
    private EmployeeBiz employeeBiz;



    @RequestMapping("/empjson")
    @ResponseBody
    public Msg getjson(@RequestParam(value = "pn",defaultValue = "1")Integer pn)
    {
        PageHelper.startPage(pn,5);
        List<Employee> employeeList = employeeBiz.getAll();
        PageInfo page=new PageInfo(employeeList,6);

        return Msg.Success().add("pageInfo",page);

    }

    @RequestMapping("/list")

    public String  emplist(@RequestParam(value = "pn",defaultValue = "1")Integer pn, Model model)
    {
        PageHelper.startPage(pn,5);
        List<Employee> employeeList = employeeBiz.getAll();
        PageInfo page=new PageInfo(employeeList,6);
        model.addAttribute("pageInfo",page);
        return "employee_list";

    }


    //@RequestMapping("/list")
    //public String list(Map<String,Object> map){
    //    map.put("list",employeeBiz.getAll());
    //    return "employee_list";
    //}
    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("employee",new Employee());
        map.put("dlist",departmentBiz.getAll());
        map.put("plist", Contant.getPosts());
        return "employee_add";
    }
    @RequestMapping("/add")
    public String add(Employee employee){
        employeeBiz.add(employee);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_update",params = "sn")
    public String toUpdate(String sn,Map<String,Object> map){
        map.put("employee",employeeBiz.get(sn));
        map.put("dlist",departmentBiz.getAll());
        map.put("plist", Contant.getPosts());
        return "employee_update";
    }
    @RequestMapping("/update")
    public String update(Employee employee){
        employeeBiz.edit(employee);
        return "redirect:list";
    }
    @RequestMapping(value = "/remove",params = "sn")
    public String remove(String sn){
        employeeBiz.remove(sn);
        return "redirect:list";
    }

}
