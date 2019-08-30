package com.sh.mapper;

import com.sh.entiy.SysUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysUserMapper {
    int deleteByPrimaryKey(Long userId);

    //保存用户
    int insert(SysUser record);

    int insertSelective(SysUser record);

    SysUser selectByPrimaryKey(@Param("userId") Long userId);

   SysUser selectByNameAndUserPassword(@Param("usercode") String usercode, @Param("password") String password );
    //管理员更新用户
    int updateByPrimaryKeySelective(SysUser sysUser);



    int insertRegister(SysUser sysUser);

    List<SysUser> selectForVisit();

    Integer updatepassword(SysUser sysUser);

    List<SysUser> selectUserList();

    int insertUser(SysUser sysUser);

    int deleteUser(Long userId);

}