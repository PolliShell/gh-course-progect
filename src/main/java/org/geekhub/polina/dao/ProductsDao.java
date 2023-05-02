package org.geekhub.polina.dao;

import org.geekhub.polina.model.product.Product;

import java.util.List;

public interface ProductsDao {

    void addProduct(Product product);
    List<Product> getAllProducts();
    List<Product> getAllProductsByCategoryId(int categoryId);
    List<Product> getProductById(int id);
    List<Product> getProductByName(String name);

    void deleteProductById(int id);

}
