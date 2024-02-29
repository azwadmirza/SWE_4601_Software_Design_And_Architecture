package com.example.order.controller;


import com.example.order.config.ResponseValueObject;
import com.example.order.model.Order;
import com.example.order.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService orderService;
    @GetMapping("/{id}")
    public ResponseValueObject findOrderById(@PathVariable("id") String orderID){
        return orderService.getUserWithDepartment(orderID);
    }

    @PostMapping("/")
    public Order saveCustomer(@RequestBody  Order order){
        return orderService.saveOrder(order);
    }

}
