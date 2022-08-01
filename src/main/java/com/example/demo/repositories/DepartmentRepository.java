package com.example.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.Department;
import com.example.demo.entities.Store;

@Repository
public interface DepartmentRepository extends JpaRepository<Department, Long> {

}
