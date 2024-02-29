package com.example.order.repository;


import com.example.order.model.Order;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends MongoRepository<Order,String> {
    Order findOrderById(String _id);
}
