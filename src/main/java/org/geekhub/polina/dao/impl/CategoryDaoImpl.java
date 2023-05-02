package org.geekhub.polina.dao.impl;

import org.geekhub.polina.dao.CategoryDao;
import org.geekhub.polina.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository

public class CategoryDaoImpl implements CategoryDao {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public CategoryDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Category save(Category category) {
        String sql = "INSERT INTO category (id, name) VALUES (?, ?)";
        jdbcTemplate.update(sql, category.getId(), category.getName());

        return category;
    }

    @Override
    public List<Category> getAllCategories() {
        String sql = "SELECT * FROM category";
        return jdbcTemplate.query(sql, new CategoryRowMapper());
    }
    @Override
    public int getCategoryIdByName(String name) {
        String sql = "SELECT id FROM category WHERE name = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{name}, Integer.class);
    }

    private static final class CategoryRowMapper implements RowMapper<Category> {
        public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
            Category category = new Category();
            category.setId(rs.getInt("id"));
            category.setName(rs.getString("name"));
            category.setSrc(rs.getString("src"));
            category.setDescription(rs.getString("description"));
            category.setImage(rs.getString("image"));
            category.setBannerPhotoSrc(rs.getString("banner_photo_src"));
            return category;
        }
    }


//    public List<Category> getCategoriesWithData() {
//        String sql = "SELECT * FROM category c JOIN category_data cd ON c.category_data_id=cd.id";
//        return jdbcTemplate.query(sql, new CategoryRowMapper());
//    }


//    public List<Category> findAll() {
//        String sql = "SELECT id, name FROM category";
//        return jdbcTemplate.query(sql, new CategoryRowMapper());
//    }
//
//    public Category findById(Long id) {
//        String sql = "SELECT id, name FROM category WHERE id = :id";
//        SqlParameterSource params = new MapSqlParameterSource("id", id);
//        return jdbcTemplate.queryForObject(sql, params, new CategoryRowMapper());
//    }
//
//    public List<Product> findProductsByCategoryId(Long categoryId) {
//        String sql = "SELECT id, name, category_id FROM product WHERE category_id = :categoryId";
//        SqlParameterSource params = new MapSqlParameterSource("categoryId", categoryId);
//        return jdbcTemplate.query(sql, params, new ProductRowMapper());
//    }
//
//    public class CategoryRowMapper implements RowMapper<Category> {
//        @Override
//        public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
//            Category category = new Category();
//            category.setId(rs.getLong("id"));
//            category.setName(rs.getString("name"));
//            return category;
//        }
//    }
}
