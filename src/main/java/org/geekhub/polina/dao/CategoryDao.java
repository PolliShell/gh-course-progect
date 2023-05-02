package org.geekhub.polina.dao;

import org.geekhub.polina.model.Category;

import java.util.List;

public interface CategoryDao {
    Category save(Category category);

    List<Category> getAllCategories();
    int getCategoryIdByName(String name);
}
