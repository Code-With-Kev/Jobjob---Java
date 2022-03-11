package com.kevniwoodside.jobjobjava.jobjobjava.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="addresses")
public class Address {

    // ---------MEMBER VARIABLES----------
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotEmpty(message="A street is required!")
    @Size(min=3, max=30, message="Title must be between 3 and 30 characters")
    private String street;

    @NotEmpty(message="A city is required!")
    @Size(min=3, max=30, message="Title must be between 3 and 30 characters")
    private String city;

    @NotEmpty(message="A state is required!")
    @Size(min=3, max=30, message="Title must be between 3 and 30 characters")
    private String state;

    @NotEmpty(message="A zipCode is required!")
    @Size(min=3, max=30, message="Title must be between 3 and 30 characters")
    private String zipCode;
    
    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;

    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }

    public Address() {}
    
    public Address(String street, String city, String state, String zipCode) {
        this.street = street;
        this.street = city;
        this.street = state;
        this.street = zipCode;

    }
}
