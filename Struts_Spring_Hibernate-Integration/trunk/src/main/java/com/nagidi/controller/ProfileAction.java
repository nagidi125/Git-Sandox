package com.nagidi.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

@SuppressWarnings("serial")
public class ProfileAction extends ActionSupport implements Preparable {

	public String execute() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();

		String s = (String) session.getAttribute("login");
		if (s != null && !s.equals("")) {
			return "success";
		} else {
			return "error";
		}

	}

	public void prepare() throws Exception {
		// TODO Auto-generated method stub

	}
}
