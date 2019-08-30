package com.sh.mapper;

import com.sh.entiy.BaseDict;

import java.util.List;

public interface BaseDictMapper {
    int deleteByPrimaryKey(Long dictId);

    int insert(BaseDict record);

    int insertSelective(BaseDict record);

    BaseDict selectByPrimaryKey(Long dictId);

    int updateByPrimaryKeySelective(BaseDict record);

    int updateByPrimaryKey(BaseDict record);


    List<BaseDict> getSource();
    List<BaseDict> getLevel();
    List<BaseDict> getIndustry();
}