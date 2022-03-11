package com.kevniwoodside.jobjobjava.jobjobjava.repositories;


import com.kevniwoodside.jobjobjava.jobjobjava.models.Job;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JobRepository extends CrudRepository<Job, Long> {	

    
}
