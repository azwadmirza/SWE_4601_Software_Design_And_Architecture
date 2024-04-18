package com.example.Order.Entity;
import lombok.*;
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Order {
    private double price;
    private int qty;
    private String name;
    private String orderld;
}