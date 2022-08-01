package com.example.demo.entities;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.OneToMany;

import org.springframework.data.annotation.Id;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Setter
@Getter
//@Builder
@Entity
public class Department {

	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	@OneToMany
	private Set<Employee> employees;
}
