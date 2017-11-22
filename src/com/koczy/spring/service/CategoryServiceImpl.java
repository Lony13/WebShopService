package com.koczy.spring.service;

import com.koczy.spring.dao.CategoryDAO;
import com.koczy.spring.entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService{

    @Autowired
    private CategoryDAO categoryDAO;

    @Override
    @Transactional
    public List<Category> getCategories() {
        return categoryDAO.getCategories();
    }

    @Override
    @Transactional
    public void saveCategory(Category category) {
        categoryDAO.saveCategory(category);
    }

    @Override
    @Transactional
    public Category getCategory(int categoryID) {
        return categoryDAO.getCategory(categoryID);
    }

    @Override
    @Transactional
    public void deleteCategory(int categoryID) {
        categoryDAO.deleteCategory(categoryID);
    }
}
