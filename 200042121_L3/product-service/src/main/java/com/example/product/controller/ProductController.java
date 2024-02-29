package com.example.product.controller;


import com.example.product.model.Product;
import com.example.product.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/product")
public class ProductController {
    @Autowired
    private ProductService ProductService;
    @GetMapping("/{id}")
    public Product findProductById(@PathVariable("id") String employeeId){
        return ProductService.findProductById(employeeId);
    }

    @PostMapping("/")
    public Product saveProduct(@RequestBody  Product Product){
        return ProductService.saveProduct(Product);
    }
}
