package com.sh.service.impl;

import com.sh.entiy.SaleChance;
import com.sh.mapper.SaleChanceMapper;
import com.sh.service.ChanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class ChanceServiceImpl implements ChanceService {

    @Autowired
    private SaleChanceMapper saleChanceMapper;

    public List<SaleChance> selectAll() {
        return saleChanceMapper.selectAll();
    }

    public int insertSelective(SaleChance saleChance) {
        return saleChanceMapper.insertSelective(saleChance);
    }

    public int updateByPrimaryKeySelective(SaleChance saleChance) {
        return saleChanceMapper.updateByPrimaryKeySelective(saleChance);
    }

    public HashMap<String, Integer> chanceAns() {
        return saleChanceMapper.chanceAns();
    }

    public SaleChance selectonechance(Long chanId) {
        return saleChanceMapper.selectonechance(chanId);
    }

    public List<SaleChance> getAllChanceSelective(SaleChance saleChance) {
        return saleChanceMapper.getAllChanceSelective(saleChance);
    }
}
