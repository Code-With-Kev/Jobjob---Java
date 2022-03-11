package com.kevniwoodside.jobjobjava.jobjobjava.repositories;

import com.kevniwoodside.jobjobjava.jobjobjava.models.Address;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AddressRepository extends CrudRepository<Address, Long> {	

    
}
