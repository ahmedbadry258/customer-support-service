package com.example.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.entities.Department;
import com.example.demo.repositories.DepartmentRepository;

@Controller
public class DepartmentController {

	@Autowired
	private DepartmentRepository departmentRepository;
	
	@GetMapping("/departments")
	public String departmentPage(Model model) {
		model.addAttribute("departments", departmentRepository.findAll());
		return "departments";
	}
	@GetMapping("/departments/")
	public String getDepartmentPage(Model model) {
		
		model.addAttribute("department", new Department());
		return "create_department";
	}
	@PostMapping("/departments/")
	public String saveDepartment(@ModelAttribute Department department) {
		departmentRepository.save(department);
		return "redirect:/departments";
	}
}
