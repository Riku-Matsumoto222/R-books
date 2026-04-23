package com.rbook.controller;

import com.rbook.domain.BookItem;
import com.rbook.service.BookService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class BookController {
    private final BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }
    @GetMapping("/")
    public String root() {
        return "redirect:/books";
    }
    @GetMapping("/books")
    public String List(Model model) {
        List<BookItem> items = bookService.findOnSaleItems();
        model.addAttribute("items", items);
        return "books/list";
    }
}
