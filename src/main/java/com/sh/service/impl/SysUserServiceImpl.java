package com.sh.service.impl;

import com.sh.entiy.SysUser;
import com.sh.mapper.SysUserMapper;
import com.sh.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysUserServiceImpl implements SysUserService {


    @Autowired
    private SysUserMapper sysUserMapper;

    public List<SysUser> selectForVisit() {
        return sysUserMapper.selectForVisit();
    }

    public Integer updatepassword(SysUser sysUser) {
        return sysUserMapper.updatepassword(sysUser);
    }

    public List<SysUser> selectUserList() {
        return sysUserMapper.selectUserList();
    }

    public int updateByPrimaryKeySelective(SysUser sysUser) {
        return sysUserMapper.updateByPrimaryKeySelective(sysUser);
    }

    public SysUser selectByPrimaryKey(Long userId) {
        return sysUserMapper.selectByPrimaryKey(userId);
    }

    public int insertUser(SysUser sysUser) {
        return sysUserMapper.insertUser(sysUser);
    }

    public int deleteUser(Long userId) {
        return  sysUserMapper.deleteUser(userId);
    }
}
