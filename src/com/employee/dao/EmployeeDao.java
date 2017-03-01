package com.employee.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.employee.entity.Employee;

@Repository
public class EmployeeDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	public List<Employee> getAllEmployees() {
		Session session = this.sessionFactory.getCurrentSession();
		String query="from Employee";
		List<Employee> employeeList = session.createQuery(query).list();
		return employeeList;
	}
	public  Employee addEmployee(Employee employee) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(employee);
		return employee;
	}
	
	public Employee getEmployee(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Employee employee = (Employee) session.get(Employee.class, new Integer(id));
		return employee;
	}
	public void updateEmployee(Employee customer) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(customer);
	}

	public void deleteEmployee(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Employee emp = (Employee) session.load(Employee.class, new Integer(id));
		if (emp!=null) {
			session.delete(emp);
		}
	}	
	
}
