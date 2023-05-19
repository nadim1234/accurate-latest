package com.accurate.user.service;

import com.accurate.user.dao.UserDao;
import com.domainobj.User;

public class UserService {
	private UserDao userDao;
	
	public User findUser() {
		return userDao.findUser(); 
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
}
