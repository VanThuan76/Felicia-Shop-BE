package com.web.service;

import com.web.entity.Cart;
import com.web.entity.Product;
import com.web.entity.User;
import com.web.exception.MessageException;
import com.web.repository.CartRepository;
import com.web.repository.ProductRepository;
import com.web.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Component
public class CartService{

    @Autowired
    private CartRepository cartRepository;

    @Autowired
    private UserUtils userUtils;

    @Autowired
    private ProductRepository productRepository;

    public void addCart(Long productId) {
        Cart cart = new Cart();
        User user = userUtils.getUserWithAuthority();
        Optional<Cart> c = cartRepository.findByColorAndUser(user.getId(), productId);
        if(c.isPresent()){
            return;
        }
        Optional<Product> productColor = productRepository.findById(productId);
        if (productColor.isEmpty()){
            throw new MessageException("Không tìm thấy color");
        }
        cart.setUser(user);
        cart.setQuantity(1);
        cart.setProduct(productColor.get());
        cartRepository.save(cart);
    }

    public void remove(Long id) {
        cartRepository.deleteById(id);
    }

    public List<Cart> findByUser() {
        List<Cart> list = cartRepository.findByUser(userUtils.getUserWithAuthority().getId());
        return list;
    }

    public void upQuantity(Long id, Integer quantity) {
        Cart cart = cartRepository.findById(id).get();
        cart.setQuantity(cart.getQuantity() + quantity);
        cartRepository.save(cart);
    }

    public void downQuantity(Long id, Integer quantity) {
        Cart cart = cartRepository.findById(id).get();
        cart.setQuantity(cart.getQuantity() + quantity);
        if(cart.getQuantity() == 0){
            cartRepository.deleteById(id);
            return;
        }
        cartRepository.save(cart);
    }

    public void removeCart() {
        cartRepository.deleteByUser(userUtils.getUserWithAuthority().getId());
    }

    public Long countCart() {
        return cartRepository.countCart(userUtils.getUserWithAuthority().getId());
    }

    public Double totalAmountCart() {
        List<Cart> list = cartRepository.findByUser(userUtils.getUserWithAuthority().getId());
        Double total = 0D;
        for(Cart c : list){
            total += c.getQuantity() * c.getProduct().getPrice();
        }
        return total;
    }
}
