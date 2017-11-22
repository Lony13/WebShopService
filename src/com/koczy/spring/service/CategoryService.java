package com.koczy.spring.service;

import com.koczy.spring.entity.Category;

import java.util.List;

public interface CategoryService {

    public List<Category> getCategories();

    public void saveCategory(Category category);

    public Category getCategory(int categoryID);

    public void deleteCategory(int categoryID);
}
