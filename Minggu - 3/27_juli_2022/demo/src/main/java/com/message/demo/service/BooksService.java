package com.message.demo.service;
import java.util.*;
import org.springframework.stereotype.Service;
import com.message.demo.model.*;
import com.message.demo.repository.BooksRepository;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class BooksService {
	@Autowired
	BooksRepository booksRepository;
	
	public List<Books> getAllBooks(){
		List<Books> books = new ArrayList<Books>();
		booksRepository.findAll().forEach(books1 -> books.add(books1));
		
		return books;
	}
	
	public void saveOrUpdate(Books books) {
		booksRepository.save(books);
	}
	
	public void delete(int id) {
		booksRepository.deleteById(id);
	}
}
