package com.ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.UserMapper;
import com.ssm.pojo.User;

@Service
public class UserService {
	@Autowired
	private UserMapper mapper;

	public User Tologin(User user) {
		// TODO Auto-generated method stub
		return mapper.Tologin(user);
	}
	
	
}
