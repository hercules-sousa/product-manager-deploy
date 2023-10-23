package com.example.productmanager.data;

import java.util.ArrayList;
import java.util.List;

public class Database {
    public static List<Product> products = new ArrayList<>();

    static {
        Product product1 = new Product("Café", "Café Maratá", 4);
        Product product2 = new Product("Leite", "Leite Camponesa", 5);
        Product product3 = new Product("Danone", "Danone Grego", 12);
        Product product4 = new Product("Danone", "Óleo de Soja", 8);
        Database.addProduct(product1);
        Database.addProduct(product2);
        Database.addProduct(product3);
        Database.addProduct(product4);
    }

    public static void addProduct(Product product) {
        products.add(product);
    }

    public static List<Product> getProducts() {
        return Database.products;
    }

    public static Product getProductById(int id) {
        return Database.products.stream().filter(product -> product.getId() == id).findFirst().orElse(null);
    }

    public static void removeProductById(int id) {
        Database.products.removeIf(product -> product.getId() == id);
    }
}
