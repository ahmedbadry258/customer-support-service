package com.example.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.Department;
import com.example.demo.entities.ServiceRequest;
import com.example.demo.entities.Store;

@Repository
public interface ServiceRequestRepository extends JpaRepository<ServiceRequest, Long> {

}
