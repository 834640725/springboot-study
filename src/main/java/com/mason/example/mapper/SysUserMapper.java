package com.mason.example.mapper;

import com.mason.example.pojo.SysUser;
import com.mason.example.utils.MyMapper;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SysUserMapper extends MyMapper<SysUser> {
}