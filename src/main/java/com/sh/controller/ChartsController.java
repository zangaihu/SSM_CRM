package com.sh.controller;


import com.sh.entiy.Msg;
import com.sh.service.ChanceService;
import com.sh.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;

@Controller
public class ChartsController {



    @Autowired
    private CustomerService customerService;

    @Autowired
    private ChanceService chanceService;


    @RequestMapping("/getsourcedata")
    @ResponseBody
    public Msg sourceCount(Model model)
    {

        HashMap<String,Integer> hashMap = customerService.sourceAns();
        System.out.println(hashMap);
        return Msg.Success().add("sourceList",hashMap);
    }

    @RequestMapping("/getinddata")
    @ResponseBody
    public Msg industryCount(Model model)
    {

        HashMap<String,Integer> hashMap = customerService.industryAns();
        System.out.println(hashMap);
        return Msg.Success().add("industryList",hashMap);
    }

    @RequestMapping("/getchancedata")
    @ResponseBody
    public  Msg chanceCount()
    {
        HashMap<String,Integer> hashMap = chanceService.chanceAns();
        System.out.println(hashMap);
        return Msg.Success().add("chanceList",hashMap);
    }


    @RequestMapping("/showcharts")
    public String showcharts(){
        return "charts";
    }



}
