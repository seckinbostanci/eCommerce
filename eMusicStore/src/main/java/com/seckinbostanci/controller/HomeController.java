package com.seckinbostanci.controller;

import com.seckinbostanci.dao.ProductDao;
import com.seckinbostanci.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.IOException;
import java.util.List;

/**
 * Created by seckinbostanci on 31.07.2016.
 */

@Controller
public class HomeController {

    @Autowired
    private ProductDao productDao;

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/products")
    public String products(Model model) {
        model.addAttribute("products",productDao.getAllProducts());
        return "products";
    }

    @RequestMapping("/products/view/{id}")
    public String product(@PathVariable String id, Model model) throws IOException{
        model.addAttribute(productDao.getProductById(id));
        return "productDetail";
    }

    @RequestMapping("/admin")
    public String admin(){
        return "admin";
    }

    @RequestMapping("/admin/productInventory")
    public String productInventory(Model model){
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products",products);

        return "productInventory";
    }

    @RequestMapping("/admin/productInventory/addProduct")
    public String addProduct(Model model){
        Product product = new Product();
        product.setName("");
        product.setDescription("");
        product.setCategory("rock");
        product.setStock(0);
        product.setPrice(0);

        model.addAttribute(product);
        return "addProduct";
    }

    @RequestMapping(value = "/admin/productInventory/addProduct", method = RequestMethod.POST)
    public String addProductPost(@ModelAttribute("product") Product product){
        productDao.addProduct(product);
        return "redirect:/admin/productInventory";
    }
}
