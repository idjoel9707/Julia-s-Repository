package com.message.demo.model;

import javax.persistence.Entity;
import javax.persistence.*;
import javax.persistence.Table;

@Entity
@Table
public class Books {
	@Id
	@Column
	private int bookid;
	@Column
	private String bookName;
	
	public int getBookId() {
		return bookid;
	}
	public void setBookId(int bookid) {
		this.bookid = bookid;
	}
	
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	
}
