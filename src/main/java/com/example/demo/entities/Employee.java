package com.example.demo.entities;

import java.time.LocalDate;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.springframework.data.annotation.Id;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Setter
@Getter
//@Builder
@Entity
public class Employee {

	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String firstName;
	private String lastName;
	private String email;
	private String title;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate joinDate;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "department_id")
	private Department department;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "store_id")
	private Store store;
	@OneToOne(cascade = CascadeType.ALL)
	private Employee manager;
	private String fullName;
	public String getFullName() {
		return this.firstName+" "+this.lastName;
	}
}
