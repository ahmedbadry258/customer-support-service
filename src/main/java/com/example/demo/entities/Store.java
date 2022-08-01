package com.example.demo.entities;

import java.time.LocalDate;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.springframework.data.annotation.Id;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Setter
@Getter
//@Builder
@Entity
public class Store {

	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	private LocalDate createdDate;
	@OneToOne
	private Employee manager;
	@OneToMany
	private Set<Employee> employees;
	@ManyToOne
	@JoinColumn(name = "department_id")
	private Department department;
}
