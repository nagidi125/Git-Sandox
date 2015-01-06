package com.nagidi.dao;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.nagidi.entity.UserEntity;

@Repository
public class LoginDaoImpl implements LoginDao  
{
	
	//Session factory injected by spring context
    private SessionFactory sessionFactory;
	
    	//This setter will be used by Spring context to inject the sessionFactory instance
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



	public boolean validate(UserEntity user) {
		boolean status = false;
		UserEntity userEntity = (UserEntity) sessionFactory.getCurrentSession().createQuery("from UserEntity").uniqueResult();
		
		if(userEntity.getUsername().equalsIgnoreCase(user.getUsername()) && userEntity.getUserpass().equalsIgnoreCase(user.getUserpass())){
		return status=true;
		}
		else return status;
	}
}
