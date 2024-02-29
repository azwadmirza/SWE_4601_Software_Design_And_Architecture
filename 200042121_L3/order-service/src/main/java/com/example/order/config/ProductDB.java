package com.example.order.config;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.config.AbstractMongoClientConfiguration;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

@Configuration
@EnableMongoRepositories(basePackages = "com.example.order")
public class ProductDB extends AbstractMongoClientConfiguration {

    @Override
    protected String getDatabaseName() {
        return "order";
    }

    @Override
    public MongoClient mongoClient() {
        return MongoClients.create("mongodb+srv://mirzaazwad:123@cluster0.1nfyxcz.mongodb.net/");
    }
}