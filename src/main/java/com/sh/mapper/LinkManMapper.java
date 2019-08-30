package com.sh.mapper;

import com.sh.entiy.LinkMan;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LinkManMapper {
    int deleteByPrimaryKey(Long lkmId);

    int insert(LinkMan record);

    int insertSelective(LinkMan linkMan);

    LinkMan selectByPrimaryKey(Long lkmId);

    int updateByPrimaryKeySelective(LinkMan linkMan);

    int updateByPrimaryKey(LinkMan record);

    List<LinkMan> findAllLink();

    LinkMan selectByLinkID(@Param("id") Long id);

    List<LinkMan> getAllLinkManSelective(LinkMan linkMan);



}