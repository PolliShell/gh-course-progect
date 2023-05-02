package org.geekhub.polina.controller;

import org.geekhub.polina.dao.impl.CategoryDaoImpl;
import org.geekhub.polina.dao.impl.ProductDaoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CategoryController {

    @Autowired
    private CategoryDaoImpl categoryDaoImpl;

    @Autowired
    private ProductDaoImpl productDaoImpl;

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("categoriesWithData", categoryDaoImpl.getAllCategories());
        return "home";
    }
}
