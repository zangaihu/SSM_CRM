package com.sh.mapper;

import com.sh.entiy.SaleChance;

import java.util.HashMap;
import java.util.List;

public interface SaleChanceMapper {
    int deleteByPrimaryKey(Long chanId);

    int insert(SaleChance record);

    int insertSelective(SaleChance saleChance);

    SaleChance selectByPrimaryKey(Long chanId);

    int updateByPrimaryKeySelective(SaleChance saleChance);

    int updateByPrimaryKey(SaleChance record);


    List<SaleChance> selectAll();

    HashMap<String,Integer> chanceAns();

     SaleChance selectonechance(Long chanId);

   List<SaleChance> getAllChanceSelective(SaleChance saleChance);


}