package com.web.service;

import com.web.entity.Category;
import com.web.exception.MessageException;
import com.web.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

@Component
public class CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    public List<Category> findAllList() {
        return categoryRepository.findAll();
    }

    public Category save(Category category) {
        if(category.getId() == null){
            if(categoryRepository.findByName(category.getName()).isPresent()){
                throw new MessageException("Tên danh mục đã tồn tại");
            }
        }
        else{
            if(categoryRepository.findByNameAndId(category.getName(), category.getId()).isPresent()){
                throw new MessageException("Tên danh mục đã tồn tại", 400);
            }
        }
        Category result = categoryRepository.save(category);
        return result;
    }

    public Category update(Category category) {
        if(categoryRepository.findByNameAndId(category.getName(), category.getId()).isPresent()){
            throw new MessageException("Tên danh mục đã tồn tại", 400);
        }
        Category result = categoryRepository.save(category);
        return result;
    }

    public void delete(Long categoryId) {
        categoryRepository.deleteById(categoryId);
    }

    public Category findById(Long id) {
        Optional<Category> category = categoryRepository.findById(id);
        if(category.isEmpty()){
            throw new MessageException("Not found category :"+id);
        }
        return category.get();
    }

    public Page<Category> findAll(Pageable pageable) {
        Page<Category> categories = categoryRepository.findAll(pageable);
        return categories;
    }

    public Page<Category> search(String param, Pageable pageable) {
        Page<Category> categories = categoryRepository.findByParam("%"+param+"%",pageable);
        return categories;
    }

}
