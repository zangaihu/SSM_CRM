package com.sh.service;

import com.sh.entiy.SaleVisit;

import java.util.List;

public interface VisitService {

    List<SaleVisit> selectvisit();

    int insertSelective(SaleVisit saleVisit);
    int deleteByPrimaryKey(String visitId);

    List<SaleVisit> getVisitSelective(SaleVisit saleVisit);

}
