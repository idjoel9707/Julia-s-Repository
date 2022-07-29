package com.ecommerce.demo.service;
import java.util.*;
import org.springframework.stereotype.Service;
import com.ecommerce.demo.model.*;
import com.ecommerce.demo.repository.*;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class ProducyService {
	@Autowired
	ProducyRepository producyRepository;
	
	public List<Producy> getAllProducts(){
		List<Producy> products = new ArrayList<Producy>();
		producyRepository.findAll().forEach(products1 -> products.add(products1));
		
		return products;
	}
	
	public void saveOrUpdate(Producy producy) {
		producyRepository.save(producy);
	}
	
	public void delete(Producy id) {
		producyRepository.delete(id);
	}
}
