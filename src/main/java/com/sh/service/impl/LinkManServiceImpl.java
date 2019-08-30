package com.sh.service.impl;

import com.sh.entiy.LinkMan;
import com.sh.mapper.LinkManMapper;
import com.sh.service.LinkManService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LinkManServiceImpl implements LinkManService {

    @Autowired
    private LinkManMapper linkManMapper;


    public List<LinkMan> findAllLink() {
        return linkManMapper.findAllLink();
    }

    public int insertSelective(LinkMan linkMan) {
        return linkManMapper.insertSelective(linkMan);
    }

    public LinkMan selectByLinkID(Long id) {
        return linkManMapper.selectByLinkID(id);
    }

    public int updateByPrimaryKeySelective(LinkMan linkMan) {
        return linkManMapper.updateByPrimaryKeySelective(linkMan);
    }

    public int deleteByPrimaryKey(Long lkmId) {
        return linkManMapper.deleteByPrimaryKey(lkmId);
    }

    public List<LinkMan> getAllLinkManSelective(LinkMan linkMan) {
        return linkManMapper.getAllLinkManSelective(linkMan);
    }
}
