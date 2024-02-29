package com.example.employee.config;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.config.AbstractMongoClientConfiguration;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

@Configuration
@EnableMongoRepositories(basePackages = "com.example.employee")
public class EmployeeDB extends AbstractMongoClientConfiguration {

    @Override
    protected String getDatabaseName() {
        return "employee";
    }

    @Override
    public MongoClient mongoClient() {
        return MongoClients.create("mongodb+srv://mirzaazwad:123@cluster0.1nfyxcz.mongodb.net/");
    }
}