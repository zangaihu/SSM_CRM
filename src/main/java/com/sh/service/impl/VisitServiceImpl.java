package com.sh.service.impl;

import com.sh.entiy.SaleVisit;
import com.sh.mapper.SaleVisitMapper;
import com.sh.service.VisitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VisitServiceImpl implements VisitService {
    @Autowired
    private SaleVisitMapper saleVisitMapper;

    public List<SaleVisit> selectvisit() {
        return saleVisitMapper.selectvisit();
    }

    public int insertSelective(SaleVisit saleVisit) {
        return saleVisitMapper.insertSelective(saleVisit);
    }

    public int deleteByPrimaryKey(String visitId) {
        return saleVisitMapper.deleteByPrimaryKey(visitId);
    }

    public List<SaleVisit> getVisitSelective(SaleVisit saleVisit) {
        return saleVisitMapper.getVisitSelective(saleVisit);
    }
}
