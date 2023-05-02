package org.geekhub.polina.controller;

import org.geekhub.polina.dao.impl.AdminDaoImpl;
import org.geekhub.polina.dao.impl.ProductDaoImpl;
import org.geekhub.polina.service.ExportDataToExel;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminController {
    private ProductDaoImpl productDaoImpl;
    private AdminDaoImpl adminDao;
    private final JdbcTemplate jdbcTemplate;
    private ExportDataToExel exportDataToExel;


    public AdminController(ProductDaoImpl productDaoImpl, AdminDaoImpl adminDao, JdbcTemplate jdbcTemplate, ExportDataToExel exportDataToExel) {
        this.productDaoImpl = productDaoImpl;
        this.adminDao = adminDao;
        this.jdbcTemplate = jdbcTemplate;
        this.exportDataToExel = exportDataToExel;
    }

    @GetMapping("/products_admin")
    public String showProducts(Model model) {
        model.addAttribute("products", productDaoImpl.getAllProducts());
        return "security/admin/products_admin";
    }

    @PostMapping("/delete/{id}")
    public String deleteProduct(@PathVariable("id") int id) {
        jdbcTemplate.update("DELETE FROM products WHERE id = ?", id);
        return "redirect:/products_admin";
    }

    @GetMapping("/product_details_admin/{id}")
    public String productDetails(Model model, @PathVariable int id) {
        model.addAttribute("productById", productDaoImpl.getProductById(id));
        return "product_details";
    }

    @GetMapping("/users_admin")
    public String users(Model model) {
        model.addAttribute("users", adminDao.findAll());
        return "security/admin/users_admin";
    }

    @PostMapping("/users_admin/delete/{id}")
    public String deleteUser(@PathVariable("id") int id) {
        jdbcTemplate.update("DELETE FROM users WHERE id = ?", id);
        return "redirect:/users_admin";
    }

//    @GetMapping("/exel")
//    public String exel(){
//        return "security/admin/statistic";
//    }
//    @GetMapping("/downloadExel")
//    public void downloadExel() {
//        exportDataToExel.exportDataToExel();
//    }
}

