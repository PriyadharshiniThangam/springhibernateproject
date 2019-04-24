package com.springboot.DAO;

import java.util.List;


import com.springboot.model.Employee;


public interface EmployeeDao{
	 public void addEmployee(Employee employee);
	    public List<Employee> getAllEmployees();
	    public void deleteEmployee(Integer employeeId);

}
