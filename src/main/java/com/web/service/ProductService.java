package com.web.service;

import com.web.dto.request.ColorRequest;
import com.web.dto.request.ProductRequest;
import com.web.dto.request.StorageRequest;
import com.web.entity.*;
import com.web.exception.MessageException;
import com.web.mapper.ProductMapper;
import com.web.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.sql.Time;
import java.util.List;
import java.util.Optional;

@Component
@Repository
public class ProductService {


    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ProductImageRepository productImageRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private ProductMapper productMapper;

    public Product save(ProductRequest productRequest) {
        Product product = productRequest.getProduct();
        product.setQuantitySold(0);
        product.setDeleted(false);
        if(product.getId() != null){
            Product p = productRepository.findById(product.getId()).get();
            product.setQuantitySold(p.getQuantitySold());
        }
        Product result = productRepository.save(product);
        for (String link : productRequest.getLinkLinkImages()) {
            ProductImage productImage = new ProductImage();
            productImage.setProduct(result);
            productImage.setLinkImage(link);
            productImageRepository.save(productImage);
        }
        return product;
    }


    public void delete(Long idProduct) {
        Product p = productRepository.findById(idProduct).get();
        try {
            productRepository.deleteById(idProduct);
        } catch (Exception e) {
            p.setDeleted(true);
            productRepository.save(p);
        }
    }

    public Page<Product> searchByAdmin(String param, Long categoryId, Pageable pageable) {
        if (param == null) {
            param = "";
        }
        Page<Product> page = null;
        if (categoryId != null) {
            page = productRepository.findByParamAndCate("%" + param + "%", categoryId, pageable);
        }
        else{
            page = productRepository.findAllByParam("%" + param + "%", pageable);
        }
        return page;
    }


    public Product findByIdForAdmin(Long id) {
        Optional<Product> exist = productRepository.findById(id);
        if (exist.isEmpty()) {
            throw new MessageException("product not found");
        }
        return exist.get();
    }


    public List<Product> findAll() {
        return productRepository.findAll();
    }
}
