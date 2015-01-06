package com.nagidi.dao;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.nagidi.entity.EmployeeEntity;

@Repository
public class EmployeeDaoImpl implements EmployeeDAO  
{
	//Session factory injected by spring context
    private SessionFactory sessionFactory;
    private PlatformTransactionManager transactionManager;
	
    //This method will be called when a employee object is added
	public void addEmployee(EmployeeEntity employee) {
		//Spring Programmatic Transaction Management	
		
		/*DefaultTransactionDefinition defaultTransactionDefinition=new DefaultTransactionDefinition();
		TransactionStatus transactionStatus=transactionManager.getTransaction(defaultTransactionDefinition);
		try {
			this.sessionFactory.getCurrentSession().save(employee);
			transactionManager.commit(transactionStatus);
		} catch (Exception e) {
			transactionManager.rollback(transactionStatus);
		}
		*/
		
		this.sessionFactory.getCurrentSession().save(employee);
	}

	//This method return list of employees in database
	@SuppressWarnings("unchecked")
	public List<EmployeeEntity> getAllEmployees() {
		return this.sessionFactory.getCurrentSession().createQuery("from EmployeeEntity").list();
	}

	//Deletes a employee by it's id
	public void deleteEmployee(Integer employeeId) {
		EmployeeEntity employee = (EmployeeEntity) sessionFactory.getCurrentSession()
										.load(EmployeeEntity.class, employeeId);
        if (null != employee) {
        	this.sessionFactory.getCurrentSession().delete(employee);
        }
	}

	//This setter will be used by Spring context to inject the sessionFactory instance
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void setTransactionManager(PlatformTransactionManager transactionManager) {
		this.transactionManager = transactionManager;
	}
	
}
