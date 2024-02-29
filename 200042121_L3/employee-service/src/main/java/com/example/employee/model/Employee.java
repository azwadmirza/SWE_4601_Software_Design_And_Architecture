package com.example.employee.model;

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
@Document(collection = "employee")
@Data
public class Employee {
    @Id
    private String id;
    @Field
    private String name;
    @Field
    private Double salary;
    @Field
    private String designation;
}
