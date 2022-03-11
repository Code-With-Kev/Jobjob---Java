package com.kevniwoodside.jobjobjava.jobjobjava.services;

import java.util.List;
import java.util.Optional;

import com.kevniwoodside.jobjobjava.jobjobjava.models.Job;
import com.kevniwoodside.jobjobjava.jobjobjava.models.LoginUser;
import com.kevniwoodside.jobjobjava.jobjobjava.models.User;
import com.kevniwoodside.jobjobjava.jobjobjava.repositories.AddressRepository;
import com.kevniwoodside.jobjobjava.jobjobjava.repositories.EmployerRepository;
import com.kevniwoodside.jobjobjava.jobjobjava.repositories.JobRepository;
import com.kevniwoodside.jobjobjava.jobjobjava.repositories.UserRepository;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
    
@Service
public class AppService {

    private final UserRepository userRepo;
    private final EmployerRepository employerRepo;
    private final JobRepository jobRepo;
    private final AddressRepository addressRepo;
    
    public AppService(UserRepository userRepo, EmployerRepository employerRepo, JobRepository jobRepo, AddressRepository addressRepo) { 
        this.userRepo = userRepo;
        this.employerRepo = employerRepo;
        this.jobRepo = jobRepo;
        this.addressRepo = addressRepo;
    }
    
    public User register(User newUser, BindingResult result) {
        if(userRepo.findByEmail(newUser.getEmail()).isPresent()) {
            result.rejectValue("email", "Unique", "This email is already in use!");
        }
        if(!newUser.getPassword().equals(newUser.getConfirm())) {
            result.rejectValue("confirm", "Matches",  "The Confirm Password must match Password!");
        }
        if(result.hasErrors()) {
            return null;
        } else {
            String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
            newUser.setPassword(hashed);
            return userRepo.save(newUser);
        }
    }
    
    public User login(LoginUser newLogin, BindingResult result) {
        if(result.hasErrors()) {
            return null;
        }
        Optional<User> potentialUser = userRepo.findByEmail(newLogin.getEmail()); 
        if(!potentialUser.isPresent()) {
            result.rejectValue("email", "Unique", "Unknown email!");
            return null;
        }
        User user = potentialUser.get();
        if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
            result.rejectValue("password", "Matches", "Invalid Password!");
        }
        if(result.hasErrors()) {
            return null;
        } else {
            return user;
        }
    }
        
    public User findUser(Long id) {
        return this.userRepo.findById(id).orElse(null);
    }

    public List<User> findAllUsers(){
        return (List<User>) this.userRepo.findAll();
    }

    public List<Job> findAllJobs(){
        return (List<Job>) this.jobRepo.findAll();
    }

    public Job createJob(Job job) {
        
        return jobRepo.save(job);
    }

    public Job findOneJob(Long id) {
        return this.jobRepo.findById(id).orElse(null);
    }
    
}