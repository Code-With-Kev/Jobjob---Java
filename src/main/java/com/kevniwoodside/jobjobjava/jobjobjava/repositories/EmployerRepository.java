package com.kevniwoodside.jobjobjava.jobjobjava.repositories;

import com.kevniwoodside.jobjobjava.jobjobjava.models.Employer;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployerRepository extends CrudRepository<Employer, Long> {	

    
}

