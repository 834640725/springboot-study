package com.mason.example.controller;

import com.mason.example.pojo.IMoocJSONResult;
import com.mason.example.pojo.SysUser;
import com.mason.example.service.UserService;
import org.n3r.idworker.Sid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("mybatis")
public class MyBatisCRUDController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private Sid sid;
	
	@RequestMapping("/saveUser")
	public IMoocJSONResult saveUser() throws Exception {
		
		String userId = sid.nextShort();
		
		SysUser user = new SysUser();
		user.setId(userId);
		user.setUsername("imooc" + new Date());
		user.setNickname("imooc" + new Date());
		user.setPassword("abc123");
		user.setIsDelete(0);
		user.setRegistTime(new Date());
		
		userService.saveUser(user);
		
		return IMoocJSONResult.ok("保存成功");
	}
	
	@RequestMapping("/updateUser")
	public IMoocJSONResult updateUser() {
		
		SysUser user = new SysUser();
		user.setId("10011001");
		user.setUsername("10011001-updated" + new Date());
		user.setNickname("10011001-updated" + new Date());
		user.setPassword("10011001-updated");
		user.setIsDelete(0);
		user.setRegistTime(new Date());
		
		userService.updateUser(user);
		
		return IMoocJSONResult.ok("保存成功");
	}
	
	@RequestMapping("/deleteUser")
	public IMoocJSONResult deleteUser(String id) {
		
		userService.deleteUser(id);
		
		return IMoocJSONResult.ok("删除成功");
	}
	
	@RequestMapping("/queryUserById")
	public IMoocJSONResult queryUserById(String id) {
		
		return IMoocJSONResult.ok(userService.queryUserById(id));
	}
	
	@RequestMapping("/queryUserList")
	public IMoocJSONResult queryUserList() {
		
		SysUser user = new SysUser();
		user.setUsername("imooc");
		user.setNickname("lee");
		
		List<SysUser> userList = userService.queryUserList(user);
		
		return IMoocJSONResult.ok(userList);
	}
	
	@RequestMapping("/queryUserListPaged")
	public IMoocJSONResult queryUserListPaged(Integer page) {
		
		if (page == null) {
			page = 1;
		}

		int pageSize = 10;
		
		SysUser user = new SysUser();
//		user.setNickname("lee");
		
		List<SysUser> userList = userService.queryUserListPaged(user, page, pageSize);
		
		return IMoocJSONResult.ok(userList);
	}
	
	@RequestMapping("/queryUserSimplyInfoById")
	public IMoocJSONResult queryUserSimplyInfoById(String id) {
		
		return IMoocJSONResult.ok(userService.queryUserSimplyInfoById(id));
	}
	
	@RequestMapping("/saveUserTransactional")
	public IMoocJSONResult saveUserTransactional() {
		
		String userId = sid.nextShort();
		
		SysUser user = new SysUser();
		user.setId(userId);
		user.setUsername("lee" + new Date());
		user.setNickname("lee" + new Date());
		user.setPassword("abc123");
		user.setIsDelete(0);
		user.setRegistTime(new Date());
		
		userService.saveUserTransactional(user);
		
		return IMoocJSONResult.ok("保存成功");
	}
}
