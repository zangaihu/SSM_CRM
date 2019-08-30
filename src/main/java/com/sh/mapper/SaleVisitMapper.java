package com.sh.mapper;

import com.sh.entiy.SaleVisit;

import java.util.List;

public interface SaleVisitMapper {
    int deleteByPrimaryKey(String visitId);

    int insert(SaleVisit record);

    int insertSelective(SaleVisit record);

    SaleVisit selectByPrimaryKey(String visitId);

    int updateByPrimaryKeySelective(SaleVisit record);

    int updateByPrimaryKey(SaleVisit record);

    List<SaleVisit> selectvisit();

    List<SaleVisit> getVisitSelective(SaleVisit saleVisit);
}