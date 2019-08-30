package com.sh.service.impl;

import com.sh.entiy.BaseDict;
import com.sh.entiy.Customer;
import com.sh.mapper.BaseDictMapper;
import com.sh.mapper.CustomerMapper;
import com.sh.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;


@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerMapper customerMapper;

    @Autowired
    private BaseDictMapper baseDictMapper;

    public List<Customer> getAllCustomer() {
        return customerMapper.getAllCustomer();
    }

    public List<BaseDict> getSource() {
        return baseDictMapper.getSource();
    }

    public List<BaseDict> getLevel() {
        return baseDictMapper.getLevel();
    }

    public List<BaseDict> getIndustry() {
        return baseDictMapper.getIndustry();
    }

    public void customerAdd(Customer customer) {
        customerMapper.insertSelective(customer);
    }

    public Customer selectCustById(Long custId) {
        return  customerMapper.selectByPrimaryKey(custId);
    }

    public int updateByPrimaryKeySelective(Customer customer) {
        return customerMapper.updateByPrimaryKeySelective(customer);
    }

    public int deleteByPrimaryKey(Long custId) {
        return customerMapper.deleteByPrimaryKey(custId);
    }

    public HashMap<String, Integer> sourceAns() {
        return customerMapper.sourceAns();
    }

    public HashMap<String, Integer> industryAns() {
        return customerMapper.industryAns();
    }

    public List<Customer> getAllCustomerSelective(Customer customer) {
        return customerMapper.getAllCustomerSelective(customer);
    }

    public int deleteAllCust(int[] ids) {
        return customerMapper.deleteAllCust(ids);
    }


}
