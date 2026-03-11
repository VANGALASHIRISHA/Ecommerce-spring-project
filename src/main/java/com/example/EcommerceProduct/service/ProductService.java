package com.example.EcommerceProduct.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.EcommerceProduct.entity.Product;
import com.example.EcommerceProduct.repository.ProductRepository;

@Service
public class ProductService {

    @Autowired
    private ProductRepository repo;

    // Add & Update
    public Product savePrd(Product p) {
        if (p.getId() == null) {
            throw new IllegalArgumentException("ID must be provided manually!");
        }
        return repo.save(p);
    }

    // List
    public List<Product> getAll() {
        return repo.findAll();
    }

    // Get by ID
    public Product getById(int id) {
        return repo.findById(id).orElse(null);
    }

    // Delete
    public void deleteById(int id) {
        repo.deleteById(id);
    }
}
