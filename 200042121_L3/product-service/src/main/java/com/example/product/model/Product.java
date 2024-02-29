package com.example.product.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Document(collection = "product")
@Data
public class Product {
    @Id
    private String id;
    @Field
    private String name;
    @Field
    private String description;
    @Field
    private Double price;

}
