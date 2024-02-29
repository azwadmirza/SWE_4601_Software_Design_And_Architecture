package com.example.customer.controller;

import com.example.customer.model.Customer;
import com.example.customer.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @GetMapping("/{id}")
    public Customer findCustomerById(@PathVariable("id") String id){
        return customerService.findCustomerById(id);
    }

    @PostMapping("/")
    public Customer saveCustomer(@RequestBody  Customer customer){
        return customerService.saveCustomer(customer);
    }
}
