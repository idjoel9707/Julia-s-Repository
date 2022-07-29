package com.ecommerce.demo.controller;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ecommerce.demo.model.*;
//import com.ecommerce.demo.service.*;
import com.ecommerce.demo.repository.UserRepository;

@RestController
public class UserController {
	  
    @Autowired
    private UserRepository repo;
  
    @PostMapping("/user")
    public String saveUser(@RequestBody User user){
    	repo.save(user);
        
        return "Added Successfully";
    }
  
    @GetMapping("/users")
    public List<User> getUsers() {
        
        return repo.findAll();
    }
  
    @DeleteMapping("/user/delete/{id}")
    public String deleteUser(@PathVariable String id){
        repo.deleteById(id);
        
        return "Deleted Successfully";
    }	
}