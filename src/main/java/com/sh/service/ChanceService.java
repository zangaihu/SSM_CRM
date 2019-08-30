package com.sh.service;

import com.sh.entiy.SaleChance;

import java.util.HashMap;
import java.util.List;

public interface ChanceService {


    List<SaleChance> selectAll();

    int insertSelective(SaleChance saleChance);


    int updateByPrimaryKeySelective(SaleChance saleChance);

    HashMap<String,Integer> chanceAns();

    SaleChance selectonechance(Long chanId);


    List<SaleChance> getAllChanceSelective(SaleChance saleChance);
}
