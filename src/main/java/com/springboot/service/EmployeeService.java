package com.springboot.service;

import java.util.List;

import com.springboot.model.Employee;

public interface EmployeeService {
    public void addEmployee(Employee employee);
    public List<Employee> getAllEmployees();
    public void deleteEmployee(Integer employeeId);
}
