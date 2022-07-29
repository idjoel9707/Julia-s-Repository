package com.ecommerce.demo.controller;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ecommerce.demo.model.*;
//import com.ecommerce.demo.service.*;
import com.ecommerce.demo.repository.ProducyRepository;

@RestController

public class ProductController {	  
    @Autowired
    private ProducyRepository repo;
  
    @PostMapping("/product")
    public String saveProduct(@RequestBody Producy prod){
    	repo.save(prod);
        
        return "Added Successfully";
    }
  
    @GetMapping("/products")
    public List<Producy> getUsers() {
        
        return repo.findAll();
    }
  
    @DeleteMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Producy id){
        repo.delete(id);
        
        return "Deleted Successfully";
    }	
}