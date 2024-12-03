package com.web.api;
import com.web.entity.Category;
import com.web.entity.ImportProduct;
import com.web.entity.Product;
import com.web.exception.MessageException;
import com.web.repository.ImportProductRepository;
import com.web.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.sql.Date;
import java.sql.Time;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/import-product")
@CrossOrigin
public class ImportProductApi {

    @Autowired
    private ImportProductRepository importProductRepository;

    @Autowired
    private ProductRepository productRepository;

    @PostMapping("/admin/create")
    public ResponseEntity<?> create(@RequestBody ImportProduct importProduct){
        Product product = productRepository.findById(importProduct.getProduct().getId()).get();
        if(product.getQuantity() == null){
            product.setQuantity(0);
        }
        productRepository.save(product);

        if(importProduct.getId() != null){
            ImportProduct imp = importProductRepository.findById(importProduct.getId()).get();
            if(imp.getProduct().getId() != importProduct.getProduct().getId()){
                imp.getProduct().setQuantity(imp.getProduct().getQuantity() - imp.getQuantity());
                if(imp.getProduct().getQuantity() < 0){
                    throw new MessageException("Số lượng sản phẩm sau thay đổi không được < 0");
                }
                productRepository.save(imp.getProduct());
                product.setQuantity(product.getQuantity() + importProduct.getQuantity());
            }
            else{
                imp.getProduct().setQuantity(imp.getProduct().getQuantity() - imp.getQuantity() + importProduct.getQuantity());
                if(imp.getProduct().getQuantity() < 0){
                    throw new MessageException("Số lượng sản phẩm sau thay đổi không được < 0");
                }
                productRepository.save(imp.getProduct());
            }
        }
        else{
            product.setQuantity(product.getQuantity() + importProduct.getQuantity());
            productRepository.save(product);
        }

        importProduct.setImportDate(new Date(System.currentTimeMillis()));
        importProduct.setImportTime(new Time(System.currentTimeMillis()));
        ImportProduct result = importProductRepository.save(importProduct);
        return new ResponseEntity<>(result, HttpStatus.CREATED);
    }

    @DeleteMapping("/admin/delete")
    public ResponseEntity<?> update(@RequestParam("id") Long id){
        Optional<ImportProduct> exist = importProductRepository.findById(id);
        if(exist.isEmpty()){
            throw new MessageException("not found");
        }
        Product product = exist.get().getProduct();;
        product.setQuantity(product.getQuantity() - exist.get().getQuantity());
        if(product.getQuantity() < 0){
            throw new MessageException("Số lượng sản phẩm sau khi hủy < 0 ");
        }
        productRepository.save(product);
        importProductRepository.delete(exist.get());
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @GetMapping("/admin/findAll")
    public ResponseEntity<?> findAll(@RequestParam(value = "idproduct", required = false) Long idProduct,
                                     @RequestParam(value = "from", required = false) Date from,
                                     @RequestParam(value = "to", required = false) Date to){
        List<ImportProduct> importProducts = null;
        if(from == null || to == null){
            from = Date.valueOf("2000-01-01");
            to = Date.valueOf("2200-01-01");
        }
        if(idProduct == null){
            importProducts = importProductRepository.findByDate(from,to);
        }
        else{
            importProducts = importProductRepository.findByDateAndProduct(from,to,idProduct);
        }
        return new ResponseEntity<>(importProducts,HttpStatus.OK);
    }

    @GetMapping("/admin/findById")
    public ResponseEntity<?> findById(@RequestParam("id") Long id){
        ImportProduct result = importProductRepository.findById(id).get();
        return new ResponseEntity<>(result,HttpStatus.OK);
    }
}
