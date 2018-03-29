package com.mason.example.mapper;

import com.mason.example.pojo.SysUser;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysUserCustomMapper {
	
	List<SysUser> queryUserSimplyInfoById(String id);
}