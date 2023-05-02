package org.geekhub.polina.dao.impl;

import org.geekhub.polina.dao.ProductsDao;
import org.geekhub.polina.model.Category;
import org.geekhub.polina.model.product.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class ProductDaoImpl implements ProductsDao {
    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public ProductDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    public class ProductRowMapper implements RowMapper<Product> {
        @Override
        public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
            Product product = new Product();
            product.setId(rs.getInt("id"));
            product.setProductName(rs.getString("name"));
            product.setQuantity(rs.getInt("quantity"));
            product.setPrice(rs.getDouble("price"));
            product.setDescription(rs.getString("description"));
            product.setImage(rs.getString("image"));
//            product.setDescription(rs.getString("description"));

            Category category = new Category();
            category.setId(rs.getInt("id"));
            category.setName(rs.getString("name"));

            category.setImage(rs.getString("image"));
            product.setCategory(category);

            //  product.setImage(rs.getString("image"));
            return product;
        }
    }

    @Override
    public List<Product> getAllProducts() {
        String sql = "SELECT p.id, p.name, p.quantity, p.price,p.description, c.id as category_id, c.name as category_name, p.image FROM products p JOIN category c ON p.category_id = c.id";
        return jdbcTemplate.query(sql, new ProductRowMapper());
    }

    @Override
    public void addProduct(Product product) {
        String sql = "INSERT INTO products (name,quantity, price, category_id,description,image) VALUES (?, ?, ?,?,?,?)";
        jdbcTemplate.update(sql, product.getProductName(), product.getQuantity(), product.getPrice(), product.getCategory().getId(), product.getDescription(), product.getImage());
    }


    @Override
    public List<Product> getAllProductsByCategoryId(int categoryId) {
        String sql = "SELECT * FROM products WHERE category_id = ?";
        return jdbcTemplate.query(sql, new Object[]{categoryId}, new ProductRowMapper());
    }

    @Override
    public List<Product> getProductById(int id) {
        String sql = "SELECT * FROM products WHERE id = ?";
        return jdbcTemplate.query(sql, new Object[]{id}, new ProductRowMapper());
    }

    @Override
    public List<Product> getProductByName(String name) {
        String sql = "SELECT * FROM products WHERE name = ?";
        return jdbcTemplate.query(sql, new Object[]{name}, new ProductRowMapper());
    }

    @Override
    public void deleteProductById(int id) {
        String sql = "DELETE FROM products WHERE id=?";
        jdbcTemplate.update(sql, id);
    }

//    public List<Product> getProductsByCategory(String categoryName) {
//        String sql = "SELECT * FROM products p JOIN category ON p.category_id = category.id WHERE category.id = ?";
//        return jdbcTemplate.query(sql, new Object[] { categoryName }, new ProductRowMapper());
//    }

//    }    public List<Product> getAllSportProduct() {
//        String sql = "SELECT * FROM category c JOIN public.products p on c.id = p.category_id where c.id = 1";
//        return jdbcTemplate.query(sql, new ProductRowMapper());
//    }
//
//    public List<Product> searchByName(String name) {
//        String query = "SELECT * FROM products WHERE name LIKE ?";
//        String nameParam = "%" + name + "%";
//        List<Product> products = jdbcTemplate.query(query, new BeanPropertyRowMapper<>(Product.class), nameParam);
//        return products;
//    }

//public List<Product> findByName(String name) {
//    String sql = "SELECT * FROM products WHERE name LIKE ?";
//    return jdbcTemplate.query(sql, new Object[]{"%" + name + "%"}, new BeanPropertyRowMapper<>(Product.class));
//}


//    public Product saveProduct(Product product) {
//        String sql = "INSERT INTO products (name,quantity, price, category_id,image) VALUES (?, ?, ?,?,?)";
//        jdbcTemplate.update(sql, product.getProductName(),product.getQuantity(), product.getPrice(), product.getCategory().getId(),product.getImage());
//
//        String selectSql = "SELECT * FROM products WHERE id = LAST_INSERT_ID()";
//        return jdbcTemplate.queryForObject(selectSql, new Object[]{}, new ProductRowMapper());
//    }


    public List<Product> search(String query) {
        String sql = "SELECT * FROM products WHERE name LIKE ?";
        return jdbcTemplate.query(sql, new Object[]{"%" + query + "%"}, new ProductRowMapper());
    }


    public List<Product> findByName(String name) {
        String sql = "SELECT * FROM products WHERE LOWER(name) LIKE LOWER(?)";
        return jdbcTemplate.query(sql, new Object[]{"%" + name + "%"}, new ProductRowMapper());
    }

//    public List<Product> getProductsByPriceRange(double minPrice, double maxPrice,int categoryId) {
//        String sql = "SELECT * FROM products p JOIN category ON category_id = category.id WHERE category.id = ? and price BETWEEN ? AND ?";
//        return jdbcTemplate.query(sql, new Object[]{minPrice, maxPrice}, new ProductRowMapper());
//    }


//    public List<Product> getProductsByPriceParams(double minPrice, double maxPrice) {
//        String sql = "SELECT * FROM products WHERE price BETWEEN ? AND ?";
//        Object[] params = { minPrice, maxPrice };
//        List<Product> products = jdbcTemplate.query(sql, params, new ProductRowMapper());
//        return products;
//    }
}
