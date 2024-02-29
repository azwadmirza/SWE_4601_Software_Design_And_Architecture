package com.example.order.service;

import com.example.order.config.ResponseValueObject;
import com.example.order.model.Customer;
import com.example.order.model.Employee;
import com.example.order.model.Order;
import com.example.order.model.Product;
import com.example.order.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class OrderService {
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private RestTemplate restTemplate;

    public Order saveOrder(Order order){
        orderRepository.save(order);
        return order;
    }


    public ResponseValueObject getUserWithDepartment(String orderId) {
        try{
            ResponseValueObject responseValueObject= new ResponseValueObject();
            Order order = orderRepository.findOrderById(orderId);
            responseValueObject.setOrder(order);
            Product product = restTemplate.getForObject("http://product-service/product/" + order.getProductId(), Product.class);
            responseValueObject.setProduct(product);
            Customer customer = restTemplate.getForObject("http://customer-service/customer/" + order.getCustomerId(), Customer.class);
            responseValueObject.setCustomer(customer);
            Employee employee = restTemplate.getForObject("http://employee-service/employee/" + order.getEmployeeId(), Employee.class);
            responseValueObject.setEmployee(employee);
            System.out.println(responseValueObject);
            return responseValueObject;
        }
        catch (Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

}
