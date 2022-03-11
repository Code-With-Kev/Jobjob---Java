package com.kevniwoodside.jobjobjava.jobjobjava.repositories;


import java.util.Optional;

import com.kevniwoodside.jobjobjava.jobjobjava.models.User;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<User,Long> {	
    Optional<User> findByEmail(String email); //optional means it has the option to return null or the user object
    Optional<User> findById(Long id);
}