package com.sh.service.impl;


import com.sh.entiy.SysUser;
import com.sh.mapper.SysUserMapper;
import com.sh.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private SysUserMapper sysUserMapper;


    public SysUser findForLogin(String usercode, String password) {
        return sysUserMapper.selectByNameAndUserPassword(usercode,password);
    }
}
