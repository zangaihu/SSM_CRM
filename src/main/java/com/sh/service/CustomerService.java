package com.sh.service;

import com.sh.entiy.BaseDict;
import com.sh.entiy.Customer;

import java.util.HashMap;
import java.util.List;

public interface CustomerService {
    //拉取客户lieb
    List<Customer> getAllCustomer();
    //客户来源
    List<BaseDict> getSource();

    List<BaseDict> getLevel();

    List<BaseDict> getIndustry();


    void customerAdd(Customer customer);


    Customer selectCustById(Long custId);



    int updateByPrimaryKeySelective(Customer customer);

    int deleteByPrimaryKey(Long custId);

    HashMap<String,Integer> sourceAns();

    HashMap<String,Integer> industryAns();

    List<Customer> getAllCustomerSelective(Customer customer);

    int deleteAllCust(int[] ids);

}
