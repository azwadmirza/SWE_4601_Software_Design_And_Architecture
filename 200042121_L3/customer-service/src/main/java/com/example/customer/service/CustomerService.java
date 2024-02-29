package com.example.customer.service;

import com.example.customer.model.Customer;
import com.example.customer.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {
    @Autowired
    private CustomerRepository customerRepository;

    public Customer findCustomerById(String id){
        return customerRepository.findCustomerById(id);
    }

    public Customer saveCustomer(Customer customer){
        customerRepository.save(customer);
        return customer;
    }

}
