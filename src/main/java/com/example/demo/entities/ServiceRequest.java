package com.example.demo.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import java.time.LocalDate;
import java.util.Set;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Setter
@Getter
//@Builder
@Entity
public class ServiceRequest {

	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String description;
	private String response;
	private Status status;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "employee_created_id")
	private Employee createdBy;
	private LocalDate createDate;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "employee_closed_id")
	private Employee closedBy;
	private LocalDate closedDate;
	private LocalDate commitmentDate;
}
