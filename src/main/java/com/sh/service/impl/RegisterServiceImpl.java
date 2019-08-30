package com.sh.service.impl;


import com.sh.entiy.SysUser;
import com.sh.mapper.SysUserMapper;
import com.sh.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements RegisterService {

    @Autowired
    private SysUserMapper sysUserMapper;

    public int insertRegister(SysUser sysUser) {


        return sysUserMapper.insertRegister(sysUser);
    }
}
