package com.sh.service;

import com.sh.entiy.LinkMan;

import java.util.List;

public interface LinkManService {

    List<LinkMan> findAllLink();


    int insertSelective(LinkMan linkMan);

     LinkMan selectByLinkID(Long id);

    int updateByPrimaryKeySelective(LinkMan linkMan);

    int deleteByPrimaryKey(Long lkmId);

    List<LinkMan> getAllLinkManSelective(LinkMan linkMan);
}
