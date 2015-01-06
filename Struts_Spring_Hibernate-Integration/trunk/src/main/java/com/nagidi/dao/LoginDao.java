package com.nagidi.dao;

import com.nagidi.entity.UserEntity;


public interface LoginDao {

	public boolean validate(UserEntity user);
}
