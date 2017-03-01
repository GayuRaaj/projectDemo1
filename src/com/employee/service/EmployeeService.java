package com.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.employee.dao.EmployeeDao;
import com.employee.entity.Employee;

@Service
public class EmployeeService {
	
	@Autowired
	EmployeeDao employeeDao;
	
	@Transactional
	public List<Employee> getAllEmployees() {
		return employeeDao.getAllEmployees();
	}
	@Transactional
	public void addEmployee(Employee employee) {
		employeeDao.addEmployee(employee);
	}
	

	@Transactional
	public Employee getEmployee(int id) {
		return employeeDao.getEmployee(id);
	}
	@Transactional
	public void updateEmployee(Employee employee) {
		employeeDao.updateEmployee(employee);

	}

	@Transactional
	public void deleteEmployee(int id) {
		employeeDao.deleteEmployee(id);
	}
}
