package com.web.repository;

import com.web.entity.ImportProduct;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.sql.Date;
import java.util.List;

public interface ImportProductRepository extends JpaRepository<ImportProduct,Long> {

    @Query("select i from ImportProduct i where i.importDate >= ?1 and i.importDate <= ?2")
    public List<ImportProduct> findByDate(Date from, Date to);

    @Query("select i from ImportProduct i where i.importDate >= ?1 and i.importDate <= ?2 and i.product.id = ?3")
    public List<ImportProduct> findByDateAndProduct(Date from, Date to, Long idProduct);
}
