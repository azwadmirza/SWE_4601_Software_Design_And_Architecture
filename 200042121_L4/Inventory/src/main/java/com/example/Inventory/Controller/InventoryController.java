package com.example.Inventory.Controller;


import com.example.Inventory.Constants;
import com.example.Inventory.Entity.OrderStatus;
import com.example.Inventory.Entity.Product;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class InventoryController {
    private List<Product> products = new InitializeProducts().initializeProducts();

    @RabbitListener(queues = Constants.QUEUE )
    public void consumeMessageFromQueue(OrderStatus orderStatus) {
        System.out.println("Message Received from queue: " +orderStatus );
        boolean found=false;
        for(Product product: products) {
            if(product.getId().equals(orderStatus.getProductId())) {
                if(product.getQty() >= orderStatus.getOrder().getQty()) {
                    product.setQty(product.getQty() - orderStatus.getOrder().getQty());
                    System.out.println(orderStatus.getMessage());
                    System.out.println(product.getQty());
                    found=true;
                } else {
                    System.out.println("Order failed");
                }
            }
        }
        if(!found){
            System.out.println("Product not found");
        }

    }
}