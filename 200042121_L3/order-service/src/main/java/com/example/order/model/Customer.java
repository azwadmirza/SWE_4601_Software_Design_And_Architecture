package com.example.order.model;

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
@Document(collection = "customer")
@Data
public class Customer {
    @Id
    private String id;
    @Field
    private String name;
    @Field
    private Integer age;
    @Field
    private String address;
}
