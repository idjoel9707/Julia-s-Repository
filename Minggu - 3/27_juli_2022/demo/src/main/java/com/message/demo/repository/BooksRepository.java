package com.message.demo.repository;
import org.springframework.data.repository.CrudRepository;
import com.message.demo.model.Books;

public interface BooksRepository extends CrudRepository<Books, Integer> {

}
