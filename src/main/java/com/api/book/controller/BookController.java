package com.api.book.controller;

import com.api.book.entity.Book;
import com.api.book.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/books")
public class BookController {
    private final BookService bookService;

    @Autowired
    public BookController( BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping
    public List<Book> getAllBooks() {
        return bookService.findAllBooks();
    }

    @GetMapping("/{bookId}")
    public  Book findBook(@PathVariable long bookId){
        try{return bookService.findBookById(bookId);}catch (Exception e ){
            String s = e.getMessage() + e.getCause();
            System.out.println(s);
            return null;
        }

    }

}
