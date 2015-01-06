package com.nagidi.controller;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.nagidi.entity.UserEntity;
import com.nagidi.service.LoginService;
import com.opensymphony.xwork2.ActionSupport;


@SuppressWarnings("serial")
public class LoginAction extends ActionSupport implements SessionAware {

	//private String username, userpass;
	private Map<String, Object> sessionMap;
	private LoginService loginService;
	private UserEntity user;

	public String login() {

		String loggedUserName = null;
		//username = user.getUsername();
		//userpass = user.getUserpass();
		// check if the userName is already stored in the session
		if (sessionMap.containsKey("user.username")) {
			loggedUserName = (String) sessionMap.get("user.username");
		}
		if (loggedUserName != null && loggedUserName.equals("Krishna")) {
			return SUCCESS; // return welcome page
		}

		// if no userName stored in the session,
		// check the entered userName and password
		if (user.getUsername() != null && user.getUsername().equals("Krishna") && user.getUserpass() != null
				&& user.getUserpass().equals("admin")) {

			// add userName to the session
			sessionMap.put("user.username", user.getUsername());
			sessionMap.put("user.userpass", user.getUserpass());

			return SUCCESS; // return welcome page
		}

		// in other cases, return login page
		return INPUT;
	}

	public String logout() {
		// remove userName from the session
		if (sessionMap.containsKey("user.username")) {
			sessionMap.remove("user.username");
		}
		return SUCCESS;
	}

	@Override
	public void validate() {
		if (user.getUsername().length() == 0) {
			addFieldError("user.username", "Username is required");
		} else if (!user.getUsername().equals("Krishna")) {
			addFieldError("user.username", "Invalid User");
		}
		if (user.getUserpass().length() == 0) {
			addFieldError("user.userpass", "password is required");
		}
	}

	public void setSession(Map<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	public LoginService getLoginService() {
		return loginService;
	}

	public UserEntity getUser() {
		return user;
	}

	public void setUser(UserEntity user) {
		this.user = user;
	}

}
