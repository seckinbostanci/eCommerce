package com.seckinbostanci.dao;

import com.seckinbostanci.model.Product;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by seckinbostanci on 31.07.2016.
 */
public class ProductDao {

    private List<Product> productList;

    public List<Product> getProductList() {
        productList = new ArrayList<Product>();

        Product product = new Product();
        product.setName("Kupa kızı sinek valesi");
        product.setDescription("Yeni tip rockcı bunlar abi");
        product.setCategory("Rock");
        product.setStock(25);
        product.setPrice(84.99);

        productList.add(product);

        return productList;
    }
}
