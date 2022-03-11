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
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="jobs")
public class Job {

    // ---------MEMBER VARIABLES----------
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotEmpty(message="A title is required!")
    @Size(min=3, max=30, message="Title must be between 3 and 30 characters")
    private String title;

    @NotEmpty(message="An elevator pitch is required!")
    @Size(min=3, max=30, message="Pitch must be between 10 and 100 characters")
    private String pitch;

    @NotEmpty(message="Job description is required!")
    @Size(min=10, max=250, message="Job description must be between 10 and 250 characters")
    private String description;

    @NotNull(message="A salary is required!")
    @Min(value=73500, message="The average salary for a developer in this area is $73,500. Please increase salary.")
    private Integer salary;

    private String jobType;

    // @NotNull(message="We must know whether this job is remote or not")
    // private Boolean isRemote;

    // @NotNull(message="We must know whether your company will pay to relocate an employee")
    // private Boolean willRelocate;

    // @DateTimeFormat(pattern="yyyy-MM-dd")
    // @Future(message="Start Date must be in the future")
    // private Date startDate;
    
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

    public Job() {}
    
    public Job(String title, String description, Integer salary, String jobType, String pitch) { //Boolean isRemote, Boolean willRelocate, Date startDate
        this.title = title;
        this.description = description;
        this.salary = salary;
        this.jobType = jobType;
        this.pitch = pitch;
        // this.isRemote = isRemote;
        // this.willRelocate =  willRelocate;
        // this.startDate = startDate;
    }

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public Integer getSalary() {
        return salary;
    }
    public void setSalary(Integer salary) {
        this.salary = salary;
    }
    // public Boolean getIsRemote() {
    //     return isRemote;
    // }
    // public void setIsRemote(Boolean isRemote) {
    //     this.isRemote = isRemote;
    // }
    // public Boolean getWillRelocate() {
    //     return willRelocate;
    // }
    // public void setWillRelocate(Boolean willRelocate) {
    //     this.willRelocate = willRelocate;
    // }
    // public Date getStartDate() {
    //     return startDate;
    // }
    // public void setStartDate(Date startDate) {
    //     this.startDate = startDate;
    // }
    public Date getCreatedAt() {
        return createdAt;
    }
    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }
    public Date getUpdatedAt() {
        return updatedAt;
    }
    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }
    public String getJobType() {
        return jobType;
    }
    public void setJobType(String jobType) {
        this.jobType = jobType;
    }
    public String getPitch() {
        return pitch;
    }
    public void setPitch(String pitch) {
        this.pitch = pitch;
    }
    
    
}
