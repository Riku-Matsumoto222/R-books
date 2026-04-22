package com.rbook;

import com.rbook.domain.BookItem;
import com.rbook.domain.ItemStatus;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BookItemRepository extends JpaRepository<BookItem, Long> {
    List<BookItem> findByStatus(ItemStatus status);
    List<BookItem> findByBookIdAndStatus(Long bookId, ItemStatus status);
}
