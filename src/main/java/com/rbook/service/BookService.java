package com.rbook.service;

import com.rbook.BookItemRepository;
import com.rbook.domain.BookItem;
import com.rbook.domain.ItemStatus;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {
    private final BookItemRepository bookItemRepository;

    public BookService(BookItemRepository bookItemRepository) {
        this.bookItemRepository = bookItemRepository;
    }

    public List<BookItem> findOnSaleItems(){
        return bookItemRepository.findByStatus(ItemStatus.ON_SALE);
    }
}
