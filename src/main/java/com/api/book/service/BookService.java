package com.api.book.service;

import com.api.book.entity.Book;
import com.api.book.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service(value="bookService")
public class BookService {

    private final BookRepository bookRepository;

    @Autowired
    public BookService(@Qualifier("bookRepository") BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public List<Book>findAllBooks(){
        return bookRepository.findAll();
    }

    public Book findBookById(long id){
        return bookRepository.getReferenceById(id);
    }

    public Book createBook(Book book){
        return bookRepository.saveAndFlush(book);
    }

    public void deleteBook(long id){
        bookRepository.deleteById(id);
    }

    public Book updateBook(Book book,long id){
       if (bookRepository.existsById(id)){
          book= this.createBook(book);
       }
       return book;
    }

}
