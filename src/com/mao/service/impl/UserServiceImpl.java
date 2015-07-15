package com.mao.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.mao.dao.UserDao;
import com.mao.pojo.User;
import com.mao.service.UserService;


@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserDao userDao;

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		//System.out.println(JSON.toJSONString(user));
		return userDao.login(user);
		
	}

	

}
