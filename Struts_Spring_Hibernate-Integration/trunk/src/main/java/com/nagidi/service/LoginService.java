package com.nagidi.service;

import com.nagidi.entity.UserEntity;


public interface LoginService {

	//boolean validate(String username, String userpass);

	boolean validate(UserEntity user);
	
}
