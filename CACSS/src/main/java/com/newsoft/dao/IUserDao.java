package com.newsoft.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.newsoft.pojo.User;

@Mapper
public interface IUserDao {

	// user表的动态全查询或者通过id查询
	public List<User> selectAllUser(@Param("id") Integer id);
	
	public User selectUserByUserName(@Param("UserLoginName") String UserLoginName);
	// 删除用户
	public boolean deleteUserById(Integer id);
	
	// 改用户
	public Boolean updateUserById(Integer id);
	
	// 增加用户
	public Boolean insertUser(User user);
	
}



