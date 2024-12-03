package com.web.api;

import com.web.dto.request.ProductRequest;
import com.web.dto.request.SearchDto;
import com.web.dto.response.ProductResponse;
import com.web.entity.Blog;
import com.web.entity.Product;
import com.web.mapper.ProductMapper;
import com.web.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/api/product")
@CrossOrigin
public class ProductApi {

    @Autowired
    private ProductService productService;

    @PostMapping("/admin/create-update")
    public ResponseEntity<?> save(@Valid @RequestBody ProductRequest productRequest, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return new ResponseEntity<>(bindingResult.getAllErrors(), HttpStatus.BAD_REQUEST);
        }
        Product response = productService.save(productRequest);
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }

    @GetMapping("/admin/findById")
    public ResponseEntity<?> findByIdForAdmin(@RequestParam("id") Long id) {
        Product response = productService.findByIdForAdmin(id);
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }

    @GetMapping("/public/findById")
    public ResponseEntity<?> findByIdForUser(@RequestParam("id") Long id) {
        Product response = productService.findByIdForAdmin(id);
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }

    @GetMapping("/public/find-all")
    public ResponseEntity<?> findByAdmin(@RequestParam(value = "category", required = false) Long category,
                                         @RequestParam(value = "search", required = false) String search, Pageable pageable) {
        Page<Product> response = productService.searchByAdmin(search, category, pageable);
        return new ResponseEntity<>(response, HttpStatus.CREATED);
    }

    @DeleteMapping("/admin/delete")
    public ResponseEntity<?> delete(@RequestParam("id") Long id) {
        productService.delete(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @GetMapping("/public/findAll-list")
    public ResponseEntity<?> findAllList(){
        List<Product> result = productService.findAll();
        return new ResponseEntity<>(result,HttpStatus.OK);
    }

    @GetMapping("/public/san-pham-ban-chay")
    public ResponseEntity<?> sanPhamBanChay(){
        List<Product> result = productService.sanPhamBanChay();
        return new ResponseEntity<>(result,HttpStatus.OK);
    }

    @GetMapping("/public/san-pham-lien-quan")
    public ResponseEntity<?> spLienQuan(@RequestParam("id") Long idProduct){
        List<Product> result = productService.sanPhamLienQuan(idProduct);
        return new ResponseEntity<>(result,HttpStatus.OK);
    }

    @GetMapping("/public/search-san-pham")
    public ResponseEntity<?> searchSp(@RequestParam(value = "idcategory", required = false) Long idcate,
                                      @RequestParam(value = "search", required = false) String search, Pageable pageable){
        Page<Product> result = productService.timKiemSanPham(idcate,search,pageable);
        return new ResponseEntity<>(result,HttpStatus.OK);
    }

    @PostMapping("/public/search-full-san-pham")
    public ResponseEntity<?> searchFullSp(@RequestBody SearchDto search, Pageable pageable){
        Page<Product> result = productService.searchFull(search,pageable);
        return new ResponseEntity<>(result,HttpStatus.OK);
    }
}
