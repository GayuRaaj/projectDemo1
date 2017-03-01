package com.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.employee.entity.Employee;
import com.employee.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping(value="registerEmployee")
	public String registerEmployee(Model model) {
		model.addAttribute("employee", new Employee());
		return "addEmployee";
	}
	@RequestMapping(value = "/getAllEmployees", method = RequestMethod.GET)
	public String getEmployees(Model model) {
		
		List<Employee> elist = employeeService.getAllEmployees();
		model.addAttribute("employee", new Employee());
		model.addAttribute("empList", elist);
		return "employeedetails";
	}
	@RequestMapping(value = "addEmployee", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute("employee") Employee employee) {	
		if(employee.getId()==0)
		{
			employeeService.addEmployee(employee);
		}
		else
		{	
			employeeService.updateEmployee(employee);
		}
		
		return "redirect:/getAllEmployees";
	}

	
	@RequestMapping(value = "/getEmployee/{id}", method = RequestMethod.GET)
	public Employee getEmployeeById(@PathVariable int id) {
		return employeeService.getEmployee(id);
	}

	@RequestMapping(value = "/updateEmployee/{id}", method = RequestMethod.GET)
	public String updateEmployee(@PathVariable("id") int id,Model model) {
		    model.addAttribute("employee", this.employeeService.getEmployee(id));
	        model.addAttribute("empList", this.employeeService.getAllEmployees());
	        return "updateEmployee";
	}

	@RequestMapping(value = "/deleteEmployee/{id}", method = RequestMethod.GET)
	public String deleteEmployee(@PathVariable("id") int id) {
	employeeService.deleteEmployee(id);
		 return "redirect:/getAllEmployees";
	}	

}
