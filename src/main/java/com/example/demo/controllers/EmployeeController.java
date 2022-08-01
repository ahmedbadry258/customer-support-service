package com.example.demo.controllers;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.entities.Employee;
import com.example.demo.entities.Store;
import com.example.demo.repositories.EmployeeRepository;
import com.example.demo.repositories.StoreRepository;

@Controller
public class EmployeeController {
	@Autowired
	private EmployeeRepository employeeRepository;
	@Autowired
	private StoreRepository storeRepository;
	@GetMapping("/employees")
	public String employees(Model model) {
		model.addAttribute("employees",employeeRepository.findAll());
		return "employees";
	}
		
	@GetMapping("/employees/")
	public String createEmployeePage(Model model) {
		model.addAttribute("employee",new Employee());
		model.addAttribute("stores",storeRepository.findAll());
		
		return "create_employee";
	}	
	@PostMapping("/employees/")
	public String saveEmployee(@ModelAttribute Employee employee) {
	
		employeeRepository.save(employee);
		return "redirect:/employees";
	}

}
