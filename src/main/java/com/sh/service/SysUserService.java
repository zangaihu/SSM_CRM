package com.sh.service;

import com.sh.entiy.SysUser;

import java.util.List;

public interface SysUserService {

    List<SysUser> selectForVisit();


    Integer updatepassword(SysUser sysUser);


    List<SysUser> selectUserList();

    int updateByPrimaryKeySelective(SysUser sysUser);


    SysUser selectByPrimaryKey(Long userId);

    int insertUser(SysUser sysUser);

    int deleteUser(Long userId);
}
