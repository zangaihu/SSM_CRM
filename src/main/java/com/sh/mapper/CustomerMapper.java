package com.sh.mapper;

import com.sh.entiy.Customer;

import java.util.HashMap;
import java.util.List;

public interface CustomerMapper {
    int deleteByPrimaryKey(Long custId);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(Long custId);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);

    List<Customer> getAllCustomer();

   HashMap<String,Integer> sourceAns();

    HashMap<String,Integer> industryAns();


    List<Customer> getAllCustomerSelective(Customer customer);

    int deleteAllCust(int[] ids);
}