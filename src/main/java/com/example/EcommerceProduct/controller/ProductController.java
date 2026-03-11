package com.example.EcommerceProduct.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.EcommerceProduct.entity.Product;
import com.example.EcommerceProduct.service.ProductService;

@Controller
@RequestMapping("/prd")
public class ProductController {

    @Autowired
    private ProductService psr;

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @PostMapping("/add")
    public String addProductForm(Model model) {
        model.addAttribute("product", new Product()); // important for Thymeleaf form binding
        return "addProduct";
    }

    @GetMapping("/list")
    public String listProducts(Model model) {
        List<Product> products = psr.getAll();
        model.addAttribute("products", products);
        return "listProducts";
    }

    @PostMapping("/addprd")
    public String addProducts(@ModelAttribute Product p, Model model) {
        if (p.getId() == 0) {
            model.addAttribute("error", "ID must be provided!");
            return "addProduct";
        }
        psr.savePrd(p);
        return "redirect:/prd/list";
    }

    @GetMapping("/edit/{id}")
    public String editProduct(@PathVariable int id, Model model) {
        Product existing = psr.getById(id);
        if (existing == null) {
            return "redirect:/prd/list"; // ID not found
        }
        model.addAttribute("product", existing);
        return "updateProduct";
    }

    @PostMapping("/update")
    public String updateProduct(@ModelAttribute Product p, Model model) {
        if (p.getId() == 0) {
            model.addAttribute("error", "ID must be provided!");
            return "updateProduct";
        }
        psr.savePrd(p);
        return "redirect:/prd/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteProduct(@PathVariable int id) {
        psr.deleteById(id);
        return "redirect:/prd/list";
    }
}
