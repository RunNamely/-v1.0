package com.newsoft.service;

import java.util.List;

import com.newsoft.pojo.User;

public interface IUserService {

	// user表的动态全查询或者通过id查询
	public List<User> findAllUser(Integer id);

	// 通过用户名查询
	public User findUserByUserName(String UserLoginName);

	// 删除用户
	public boolean removeUserById(Integer id);

	// 改用户
	public Boolean updateUserById(Integer id);

	// 增加用户
	public Boolean insertUser(User user);

}
