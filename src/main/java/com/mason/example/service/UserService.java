package com.mason.example.service;

import com.mason.example.pojo.SysUser;

import java.util.List;

public interface UserService {

	public void saveUser(SysUser user) throws Exception;

	public void updateUser(SysUser user);

	public void deleteUser(String id);

	public SysUser queryUserById(String id);

	public List<SysUser> queryUserList(SysUser user);

	public List<SysUser> queryUserListPaged(SysUser user, Integer page, Integer pageSize);

	public SysUser queryUserSimplyInfoById(String id);
	
	public void saveUserTransactional(SysUser user);
}
