package com.jsp.dao;

import org.springframework.stereotype.Repository;

import com.jsp.dto.Employee;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;

@Repository
public class EmployeeDAO {
	@Autowired
	EntityManager manager;

	@Autowired
	EntityTransaction transaction;

	// To insert employee object into DB
	public void insertEmployee(Employee employee) {
		transaction.begin();
		manager.persist(employee);
		transaction.commit();
	}

	// To find an employee object based on employee id
	public Employee findEmployeeById(int id) {
		Employee e = manager.find(Employee.class, id);
		if (e != null) {
			return e;
		} else {
			return null;
		}
	}

	// To delete an employee object from DB
	public int deleteEmployeeById(int id) {
		Employee e = manager.find(Employee.class, id);
		if (e != null) {
			transaction.begin();
			manager.remove(e);
			transaction.commit();
			return 0;
			// return "Employee details with ID : " + id + " is deleted successfully.";
		} else {
			return 1;
		}
	}

	// to update employee details (name and phone number) based on ID
	public Employee updateEmployee(int id, String newName, long newNumber, String newEmail) {
		Employee emp = manager.find(Employee.class, id);
		if (emp != null) {
			emp.setName(newName);
			emp.setPhone(newNumber);
			emp.setEmail(newEmail);
			transaction.begin();
			manager.merge(emp);
			transaction.commit();
			return emp;
		} else
			return null;
	}

	// to fetch and display ALL employee objects from OB
	public List<Employee> getAllEmployees() {
		Query q = manager.createQuery("select e from Employee e");
		return q.getResultList();
	}

}
