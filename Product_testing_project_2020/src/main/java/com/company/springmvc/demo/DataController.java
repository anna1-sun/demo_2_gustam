package com.company.springmvc.demo;

import com.company.springmvc.demo.data.DataRepository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.stereotype.Controller;

@Controller
public class DataController {
    @GetMapping("/products")
    public String owner(Model model) {

        var repo = new DataRepository();
        var items = repo.getProducts();

        model.addAttribute("title", "Products");
        model.addAttribute("products",items);
        return "products";
    }

}
