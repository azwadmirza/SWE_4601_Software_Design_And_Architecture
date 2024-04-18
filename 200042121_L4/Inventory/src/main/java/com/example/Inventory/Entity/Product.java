package com.example.Inventory.Entity;
import lombok.*;
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Product {
    private String id;
    private String name;
    private int qty;
}
