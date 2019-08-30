package com.sh.service;

import com.sh.entiy.SysUser;

public interface LoginService {

    SysUser findForLogin(String usercode, String password);
}
