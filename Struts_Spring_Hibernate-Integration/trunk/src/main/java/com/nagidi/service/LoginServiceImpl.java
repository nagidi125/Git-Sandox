package com.nagidi.service;

import org.springframework.transaction.annotation.Transactional;

import com.nagidi.dao.LoginDao;
import com.nagidi.entity.UserEntity;


public class LoginServiceImpl implements LoginService {
	private LoginDao loginDAO;

	public void setLoginDAO(LoginDao loginDAO) {
		this.loginDAO = loginDAO;
	}
	@Transactional
	public boolean validate(UserEntity user) {
		boolean status=false;
		status=loginDAO.validate(user);
		return status;
	}
}
