package com.example.order.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

import java.time.LocalDateTime;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Document(collection = "order")
@Data
public class Order {
    @Id
    private String id;
    @Field
    private String customerId;
    @Field
    private String productId;
    @Field
    private String employeeId;
    @Field
    private LocalDateTime date=LocalDateTime.now();
}
