package com.jsp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.dao.EmployeeDAO;
import com.jsp.dto.Employee;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeDAO dao;

	// API to insert employee object into DB

	@RequestMapping("/emp")
	public ModelAndView getEmployeForm() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("employee", new Employee());
		mv.setViewName("create");
		return mv;
	}

	@RequestMapping("/save")
	@ResponseBody
	public String saveEmployee(@ModelAttribute Employee employee) {
		dao.insertEmployee(employee);
		return "Employee details stored successfully....";

	}

	// API TO retrieve and display employee object based on employee id
	@RequestMapping("/view")
	public ModelAndView getDisplayForm() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("employee", new Employee());
		mv.setViewName("get");
		return mv;
	}

	@RequestMapping("/display")
	public ModelAndView searchEmployee(@ModelAttribute Employee employee) {
		int id = employee.getId();
		Employee emp = dao.findEmployeeById(id);
		if (emp != null) {
			ModelAndView mv = new ModelAndView();
			mv.addObject("employee", emp);
			mv.setViewName("search");
			return mv;
		} else {
			ModelAndView mv = new ModelAndView();
			mv.addObject("message", " Employee id doesn't esixts....");
			mv.setViewName("error");
			return mv;
		}

	}

	// REST API to delete an employee object from db
	@RequestMapping("/delete")
	private String getDeleteForm() {
		return "delete";
	}

	@RequestMapping("/remove")
	public ModelAndView deleteEmployeeAndView(@RequestParam int id) {
		int res = dao.deleteEmployeeById(id);
		if (res == 0) {
			ModelAndView mv = new ModelAndView();
			mv.addObject("Successmsg", "Employee Details with ID :" + id + "is deleted successfully.");
			mv.setViewName("success");
			return mv;
		} else {
			ModelAndView mv = new ModelAndView();
			mv.addObject("Message", "Employee ID doesnt exist....");
			mv.setViewName("error");
			return mv;
		}
	}

	// REST API for Updating Employee details
	@RequestMapping("/edit")
	public String getUpdatedForm() {
		return "edit";
	}

	@RequestMapping("/update")
	public ModelAndView updateEmployeeDetails(@RequestParam int id, @RequestParam String name,
			@RequestParam String email, @RequestParam long phone) {
		Employee emp = dao.updateEmployee(id, name, phone, email);
		if (emp != null) {
			ModelAndView mv = new ModelAndView();
			mv.addObject("msg", "Employee details are updated successfully...");
			mv.setViewName("showmsg");
			return mv;
		} else {
			ModelAndView mv = new ModelAndView();
			mv.addObject("Message", "Employee ID doesnt exist....");
			mv.setViewName("error");
			return mv;
		}
	}
	// REST API TO FETCHING AND DISPLAYING ALL Employee details
		@RequestMapping("/displayAll")
		public ModelAndView getAllEmployees() 
		{
			List<Employee> list = dao.getAllEmployees();
			ModelAndView mv = new ModelAndView();
			mv.addObject("employeelist",list);
			mv.setViewName("fetchAll");
			return mv;
		}
}

// <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>