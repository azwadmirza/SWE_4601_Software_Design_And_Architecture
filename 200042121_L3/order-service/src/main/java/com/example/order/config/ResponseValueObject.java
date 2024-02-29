package com.example.order.config;

import com.example.order.model.Customer;
import com.example.order.model.Employee;
import com.example.order.model.Order;
import com.example.order.model.Product;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ResponseValueObject{
    private Customer customer;
    private Product product;
    private Employee employee;
    private Order order;
}
