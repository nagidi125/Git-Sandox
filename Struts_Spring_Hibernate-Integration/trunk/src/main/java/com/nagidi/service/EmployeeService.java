package com.nagidi.service;

import java.util.List;

import com.nagidi.entity.EmployeeEntity;

public interface EmployeeService {
	//This method will be called when a employee object is added
    public void addEmployee(EmployeeEntity employee);
    //This method return list of employees in database
    public List<EmployeeEntity> getAllEmployees();
    //Deletes a employee by it's id
    public void deleteEmployee(Integer employeeId);
}
