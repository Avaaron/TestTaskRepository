package com.booker;


import com.booker.domain.Book;
import com.booker.repos.BookRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
public class BookController {

    @Autowired
    private BookRepo bookRepo;
    private int currentpage = 0;
    private String filter;

    @GetMapping
    public String main ( Map<String, Object> model){
        Page<Book> books = bookRepo.findAll(PageRequest.of(currentpage, 10, Sort.Direction.ASC, "title"));
        model.put("books", books);
        return "main";
    }

    @PostMapping("page")
    public String paging( @RequestParam int page,  Map<String, Object> model){
        int countPages;
        Page<Book> books;

        if(filter != null && !filter.isEmpty()){
            countPages = bookRepo.findByTitleContainsIgnoreCase(filter, PageRequest.of(0, 10)).getTotalPages();
            currentpage = 0;
            if (page == 1 && currentpage < countPages - 1) currentpage++;
            if (page == -1 && currentpage > 0) currentpage--;
            books = bookRepo.findByTitleContainsIgnoreCase(filter, PageRequest.of(currentpage, 10, Sort.Direction.ASC, "title"));

        }else {
            countPages = bookRepo.findAll(PageRequest.of(0, 10)).getTotalPages();
            if (page == 1 && currentpage < countPages - 1) currentpage++;
            if (page == -1 && currentpage > 0) currentpage--;
            books = bookRepo.findAll(PageRequest.of(currentpage, 10, Sort.Direction.ASC, "title"));

        }

        model.put("books", books);
        return "main";
    }


    @PostMapping("add")
    public String add(@RequestParam String title, @RequestParam String description, @RequestParam String author,
                      @RequestParam String isbn, @RequestParam int printYear, Map<String, Object> model){
        Book book = new Book(title, description, author, isbn, printYear, false);
        bookRepo.save(book);
        Page<Book> books = bookRepo.findAll( PageRequest.of(0, 10, Sort.Direction.ASC, "title"));
        model.put("books", books);
        return "main";
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public String showUpdateForm(@RequestParam(name="message", required = false, defaultValue = "")String message, @PathVariable("id") long id, Map<String, Object> model){
        Book book = bookRepo.findById(id).get();
        model.put("message", message);
        model.put("book", book);
        return "update";
    }

    @PostMapping
    public String edit(@RequestParam(name="message", required = false, defaultValue = "Книга успешно отредактирована!")String message, @RequestParam long id, @RequestParam String title, @RequestParam String description, @RequestParam String author,
                         @RequestParam String isbn, @RequestParam int printYear, Map<String, Object> model){
       Book book = bookRepo.findById(id).get();
       book.setTitle(title);
       book.setDescription(description);
       book.setAuthor(author);
       book.setIsbn(isbn);
       book.setPrintYear(printYear);
       bookRepo.save(book);
       model.put("message", message);
       model.put("book", book);
       return "update";
    }

    @PostMapping("filter")
    public String filter(@RequestParam String filter, Map<String, Object> model){
        Page<Book> books;
        if(filter != null || !filter.isEmpty()) {
            currentpage = 0;
            this.filter = filter;
            books = bookRepo.findByTitleContainsIgnoreCase(filter, PageRequest.of(currentpage, 10, Sort.Direction.ASC, "title"));
        }else {
            books = bookRepo.findAll( PageRequest.of(currentpage, 10, Sort.Direction.ASC, "title"));
        }
        model.put("books", books);
        return "main";
    }



    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") long id, Map<String, Object> model){
        bookRepo.deleteById(id);
        Page<Book> books = bookRepo.findAll(PageRequest.of(currentpage, 10, Sort.Direction.ASC, "title"));
        model.put("books", books);
        return "redirect:/";
    }

    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public String view(@PathVariable("id") long id, Map<String, Object> model){
        Book book = bookRepo.findById(id).get();
        book.setReadAlready(true);
        bookRepo.save(book);
        model.put("book", book);
        return "view";
    }



}
