package com.seckinbostanci.dao;

import com.seckinbostanci.model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {

    private List<Product> productList;

    public List<Product> getProductList() {
        productList = new ArrayList<Product>();

        Product product = new Product();
        product.setId("0");
        product.setName("Kupa kızı sinek valesi");
        product.setDescription("Yeni tip rockcı bunlar abi");
        product.setCategory("Rock");
        product.setStock(25);
        product.setPrice(84.99);

        Product product1 = new Product();
        product1.setId("1");
        product1.setName("Kupa kızı sinek valesi1");
        product1.setDescription("Yeni tip rockcı bunlar abi");
        product1.setCategory("Rock");
        product1.setStock(25);
        product1.setPrice(84.99);

        Product product2 = new Product();
        product2.setId("2");
        product2.setName("Kupa kızı sinek valesi2");
        product2.setDescription("Yeni tip rockcı bunlar abi");
        product2.setCategory("Rock");
        product2.setStock(25);
        product2.setPrice(84.99);

        Product product3 = new Product();
        product3.setId("3");
        product3.setName("Kupa kızı sinek valesi3");
        product3.setDescription("Yeni tip rockcı bunlar abi");
        product3.setCategory("Rock");
        product3.setStock(25);
        product3.setPrice(84.99);

        Product product4 = new Product();
        product4.setId("4");
        product4.setName("Kupa kızı sinek valesi4");
        product4.setDescription("Yeni tip rockcı bunlar abi");
        product4.setCategory("Rock");
        product4.setStock(25);
        product4.setPrice(84.99);

        Product product5 = new Product();
        product5.setId("5");
        product5.setName("Kupa kızı sinek valesi5");
        product5.setDescription("Yeni tip rockcı bunlar abi");
        product5.setCategory("Rock");
        product5.setStock(25);
        product5.setPrice(84.99);

        productList.add(product);
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);
        productList.add(product4);
        productList.add(product5);

        return productList;
    }

    public Product getProductById(String id) throws IOException{
        for (Product product : getProductList()){
            if(product.getId().equals(id)){
                return product;
            }
        }
        throw new IOException("No product");
    }
}
