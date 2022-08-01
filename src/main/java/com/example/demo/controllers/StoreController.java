package com.example.demo.controllers;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.entities.Store;
import com.example.demo.repositories.DepartmentRepository;
import com.example.demo.repositories.StoreRepository;

@Controller
public class StoreController {
	@Autowired
	private StoreRepository storeRepository;
	
	@Autowired
	private DepartmentRepository departmentRepository;
	
	@GetMapping("/")
	public String home() {
		return "index";
	}
	@GetMapping("/stores")
	public String store(Model model) {
		model.addAttribute("stores",storeRepository.findAll());
		return "stores";
	}
		
	@GetMapping("/stores/")
	public String createStorePage(Model model) {
		model.addAttribute("store",new Store());
		model.addAttribute("departments",departmentRepository.findAll());
		
		return "create_store";
	}	
	@PostMapping("/stores/")
	public String saveStore(@ModelAttribute Store store) {
		store.setCreatedDate(LocalDate.now());
		System.out.println(store.toString());
		storeRepository.save(store);
		return "redirect:/stores";
	}
}
