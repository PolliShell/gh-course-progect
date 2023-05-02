package org.geekhub.polina.controller.product;

import org.geekhub.polina.dao.impl.CategoryDaoImpl;
import org.geekhub.polina.dao.impl.CityDaoImpl;
import org.geekhub.polina.dao.impl.ProductDaoImpl;
import org.geekhub.polina.model.product.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;


@Controller

public class ProductsController {

    @Autowired
    private ProductDaoImpl productDaoImpl;

    @Autowired
    private CategoryDaoImpl categoryDaoImpl;

    @Autowired
    private final JdbcTemplate jdbcTemplate;
    @Autowired
    private CityDaoImpl cityDaoImpl;

    public ProductsController(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private static String UPLOADED_FOLDER = "courseProject\\src\\main\\resources\\static\\images\\products";

    @GetMapping("/add-new-product")
    public String index(Model model) {
        model.addAttribute("categories", categoryDaoImpl.getAllCategories());
        model.addAttribute("products", productDaoImpl.getAllProducts());
        model.addAttribute("cities", cityDaoImpl.getAllCities());
        model.addAttribute("imageSrc", UPLOADED_FOLDER);

        return "add_new_product";
    }

    @PostMapping("/add-new-product")
    public String singleFileUpload(@ModelAttribute Product product, @RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {
        if (file.isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
            return "redirect:uploadStatus";
        }

        try {

            byte[] bytes = file.getBytes();
            Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
            Files.write(path, bytes);

            redirectAttributes.addFlashAttribute("message", "You successfully uploaded '" + file.getOriginalFilename() + "'");

            Path pathBd = Paths.get(file.getOriginalFilename());
            product.setImage(pathBd.toString());
            productDaoImpl.addProduct(product);

        } catch (IOException e) {
            e.printStackTrace();
        }

        return "redirect:/";
    }

    @GetMapping("/search")
    public String search() {
        return "index";
    }

    @PostMapping("/search")
    public String search(@RequestParam("name") String name, Model model) {
        List<Product> products = productDaoImpl.findByName(name);
        model.addAttribute("productsByCategory", products);
        return "products";
    }

    @GetMapping("/{category}")
    public String productsByCategory(@PathVariable String category, Model model) {
        int categoryId = categoryDaoImpl.getCategoryIdByName(category);
        model.addAttribute("categoriesWithData", categoryDaoImpl.getAllCategories());
        model.addAttribute("productsByCategory", productDaoImpl.getAllProductsByCategoryId(categoryId));
        return "products";
    }


    @GetMapping("/product_details/{id}")
    public String productDetails(Model model, @PathVariable int id) {
        model.addAttribute("productById", productDaoImpl.getProductById(id));


        return "product_details";
    }

    @GetMapping("/admin")
    public String admin(){
        return "security/admin/admin";
    }

    @GetMapping("/user")
    public String user(){
        return "security/user";
    }
}
