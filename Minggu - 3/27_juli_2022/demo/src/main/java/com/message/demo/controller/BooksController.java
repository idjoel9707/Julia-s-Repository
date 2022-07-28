package com.message.demo.controller;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.message.demo.model.*;
import com.message.demo.service.BooksService;

@RestController
public class BooksController {
	@Autowired
	BooksService booksService;
	
	@GetMapping("/v1/messages")
	private List<Books>getAllBooks(){
		return booksService.getAllBooks();
	}
	
	@PostMapping("/v1/messages")
	private int saveBook(@RequestBody Books books){
		booksService.saveOrUpdate(books);
		return books.getBookId();
	}
	
	@DeleteMapping("/v1/messages/{bookid}")
	private void deleteBook(@PathVariable("bookid") int bookid) {
		booksService.delete(bookid);
	}
}
