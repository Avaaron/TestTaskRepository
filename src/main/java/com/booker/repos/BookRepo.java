package com.booker.repos;

import com.booker.domain.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookRepo extends PagingAndSortingRepository<Book, Long> {

    @Override
    Page<Book> findAll(Pageable pageable);


    Page<Book> findByTitleContainsIgnoreCase(String value, Pageable page);
    Page<Book> findByAuthorContainsIgnoreCase(String value, Pageable page);
    Page<Book> findByAuthorIgnoreCaseContainsAndReadAlready(String value, Boolean readAlready, Pageable page);
    Page<Book> findByTitleIgnoreCaseContainsAndReadAlready(String value, Boolean readAlready, Pageable page);
    Page<Book> findByReadAlready(Boolean readAlready, Pageable page);
}
