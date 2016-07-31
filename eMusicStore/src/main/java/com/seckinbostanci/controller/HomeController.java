package com.seckinbostanci.controller;

import com.seckinbostanci.dao.ProductDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by seckinbostanci on 31.07.2016.
 */

@Controller
public class HomeController {

    ProductDao productDao = new ProductDao();

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/products")
    public String product(Model model) {

        model.addAttribute("product",productDao.getProductList().get(0));

        return "products";
    }

}
