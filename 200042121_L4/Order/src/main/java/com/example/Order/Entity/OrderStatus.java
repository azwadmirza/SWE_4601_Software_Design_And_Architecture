package com.example.Order.Entity;
import lombok.*;
@AllArgsConstructor
@Data
@NoArgsConstructor
@ToString
public class OrderStatus {
    private Order order;
    private String status;
    private String message;
    private String productId;
}