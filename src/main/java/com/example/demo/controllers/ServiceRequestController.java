package com.example.demo.controllers;

import java.time.LocalDate;

import org.apache.tomcat.jni.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.entities.Employee;
import com.example.demo.entities.ServiceRequest;
import com.example.demo.entities.Status;
import com.example.demo.repositories.EmployeeRepository;
import com.example.demo.repositories.ServiceRequestRepository;



@Controller
public class ServiceRequestController {
	
	@Autowired
	private ServiceRequestRepository serviceRequestRepository;
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@GetMapping("/service-request")
	public String findServiceRequests(Model model) {
		model.addAttribute("srs", serviceRequestRepository.findAll());
		
		return "service_request_list";
	}
	@GetMapping("/service-request/")
	public String serviceRequestsForm(Model model) {
		model.addAttribute("serviceRequest", new ServiceRequest());
		model.addAttribute("statusList", Status.values());
		model.addAttribute("emp", employeeRepository.findById(1l).get());
		return "service_request";
	}
	@PostMapping("/service-request/")
	public String saveServiceRequests(@ModelAttribute ServiceRequest serviceRequest) {
		
		serviceRequest.setCreateDate(LocalDate.now());
		serviceRequest.setCommitmentDate(LocalDate.now().plusDays(3));
		System.out.println(serviceRequest.toString());
		serviceRequestRepository.save(serviceRequest);
		return "redirect:/service-request";
	}
	@GetMapping("/service-request/{id}")
	public String findServiceRequestsById(@PathVariable("id")Long id,Model model) {
		System.out.println(id);
		model.addAttribute("serviceRequest", serviceRequestRepository.findById(id).get());
		model.addAttribute("statusList", Status.values());
		
		return "service_request_details";
	}
	@PostMapping("/sr_response")
	public String serviceRequestResponse(@ModelAttribute ServiceRequest serviceRequest) {
		ServiceRequest sr= new ServiceRequest();
		sr=serviceRequest;
		sr.setCreatedBy(serviceRequest.getCreatedBy());
		System.out.println(serviceRequest.getCreatedBy().getEmail());
		serviceRequest.setClosedBy(employeeRepository.findById(3l).get());
		serviceRequest.setClosedDate(LocalDate.now());
	//	System.out.println(serviceRequest.toString());
		serviceRequestRepository.save(sr);
		return "redirect:/service-request";
	}
}
