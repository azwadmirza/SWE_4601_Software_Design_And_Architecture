package com.example.product.service;
import com.example.product.model.Product;
import com.example.product.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;

    public Product findProductById(String _id){
        return productRepository.findProductById(_id);
    }

    public Product saveProduct(Product product){
        productRepository.save(product);
        return product;
    }

}
