package com.newsoft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newsoft.dao.IUserDao;
import com.newsoft.pojo.User;
import com.newsoft.service.IUserService;


@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	private IUserDao iUser;
	
	@Override
	public List<User> findAllUser(Integer id) {
		return iUser.selectAllUser(id);
	}

	@Override
	public boolean removeUserById(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Boolean updateUserById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean insertUser(User user) {
		
		return iUser.insertUser(user);
	}

	@Override
	public User findUserByUserName(String UserLoginName) {
		return iUser.selectUserByUserName(UserLoginName);
	}


}
