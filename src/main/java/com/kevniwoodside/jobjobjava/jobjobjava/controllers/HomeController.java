package com.kevniwoodside.jobjobjava.jobjobjava.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import com.kevniwoodside.jobjobjava.jobjobjava.models.Job;
import com.kevniwoodside.jobjobjava.jobjobjava.models.LoginUser;
import com.kevniwoodside.jobjobjava.jobjobjava.models.User;
import com.kevniwoodside.jobjobjava.jobjobjava.services.AppService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {

    @Autowired
	private AppService appService;
	
    //----------------------------------------------------- LOGIN/REGISTRATION----------------------------------------------

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "login.jsp";
    } 
    
    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
        appService.register(newUser, result);
        if(result.hasErrors()) {
            model.addAttribute("newLogin", new LoginUser()); // gives the login form something to bind to if registration fails since they are on the same page
            return "index.jsp";
        }
        session.setAttribute("user_id", newUser.getId());
        return "redirect:/dashboard";
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
            User user = this.appService.login(newLogin, result);
            if(result.hasErrors()) {
                
                model.addAttribute("newUser", new User()); // gives the registration form something to bind to if registration fails since they are on the same page
                return "index.jsp";
            }
            session.setAttribute("user_id", user.getId());
            return "redirect:/dashboard";
        }
        
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("user_id"); //clears session
        return "redirect:/";
    }

    //----------------------------------------------------- DASHBOARD/DISPLAY----------------------------------------------

    @GetMapping("/home")
    public String index() {
        return "index.jsp";
    } 

    @GetMapping("/jobs")
    public String dashboard(HttpSession session, Model model, RedirectAttributes redirectAttributes) {
        // Long loginUserId = (Long) session.getAttribute("user_id"); 
        // if(loginUserId == null) {
        //     redirectAttributes.addFlashAttribute("errorNotAllowed", "You must log in first!");
        //     return "redirect:/";
        // }
        // User loggedInUser = this.appService.findUser(loginUserId);
        // List<User> allUsers = this.appService.findAllUsers();
        List<Job> allJobs = this.appService.findAllJobs();
        // model.addAttribute("allUsers", allUsers);
        model.addAttribute("allJobs", allJobs);
        // model.addAttribute("loggedInUser", loggedInUser);
        return "showJobs.jsp";
    }

    //----------------------------------------------------- CREATE ----------------------------------------------
    @GetMapping("/jobs/new")
    public String newJob(@ModelAttribute("job") Job job, Model model, HttpSession session, RedirectAttributes redirectAttributes) {
        // Long loginUserId = (Long) session.getAttribute("user_id"); //need to cast to Long because session will turn it into an object
        // if(loginUserId == null) {
        //     redirectAttributes.addFlashAttribute("errorNotAllowed", "You must log in first!"); 
        //     return "redirect:/dashboard";
        // }
        return "newJob.jsp";
    }

    
    @PostMapping("/jobs/create")
    public String createJob(@Valid @ModelAttribute("job") Job job, BindingResult result, Model model, HttpSession session, LoginUser loginUser, RedirectAttributes redirectAttributes) {
        //Long loginUserId = (Long) session.getAttribute("user_id"); //need to cast to Long because session will turn it into an object
        // generate flash message on redirect
        // if(loginUserId == null) {
        //     redirectAttributes.addFlashAttribute("errorNotAllowed", "You must log in first!"); 
        //     return "redirect:/";
        // }
        if(result.hasErrors()) {
            return "newJob.jsp";
        } else {
            //User user = this.appService.findUser((Long) session.getAttribute("user_id"));
            //job.setUser(user);
            this.appService.createJob(job);
            return "redirect:/dashboard";
        }
    }

    //----------------------------------------------------- DASHBOARD/DISPLAY----------------------------------------------
    @GetMapping("/jobs/user")
    public String userDashboard(HttpSession session, Model model, RedirectAttributes redirectAttributes) {
        // Long loginUserId = (Long) session.getAttribute("user_id"); 
        // if(loginUserId == null) {
        //     redirectAttributes.addFlashAttribute("errorNotAllowed", "You must log in first!");
        //     return "redirect:/";
        // }
        // User loggedInUser = this.appService.findUser(loginUserId);
        // List<User> allUsers = this.appService.findAllUsers();
        List<Job> allJobs = this.appService.findAllJobs();
        // model.addAttribute("allUsers", allUsers);
        model.addAttribute("allJobs", allJobs);
        // model.addAttribute("loggedInUser", loggedInUser);
        return "userDashboard.jsp";
    }

    @GetMapping("/jobs/challenges")
    public String challenges(HttpSession session, Model model, RedirectAttributes redirectAttributes) {
        // Long loginUserId = (Long) session.getAttribute("user_id"); 
        // if(loginUserId == null) {
        //     redirectAttributes.addFlashAttribute("errorNotAllowed", "You must log in first!");
        //     return "redirect:/";
        // }
        // User loggedInUser = this.appService.findUser(loginUserId);
        // List<User> allUsers = this.appService.findAllUsers();
        List<Job> allJobs = this.appService.findAllJobs();
        // model.addAttribute("allUsers", allUsers);
        model.addAttribute("allJobs", allJobs);
        // model.addAttribute("loggedInUser", loggedInUser);
        return "userDashboard.jsp";
    }

    @GetMapping("/challenge")
    public String challenge(Model model) {
        return "challenge.jsp";
    } 

}