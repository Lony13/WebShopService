package com.koczy.spring.controller;

import com.koczy.spring.entity.Category;
import com.koczy.spring.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @GetMapping("/list")
    public String listCategories(Model model){
        model.addAttribute("categories", categoryService.getCategories());
        return "list-categories";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model){
        Category category = new Category();
        model.addAttribute("category", category);
        return "category-form";
    }

    @PostMapping("/saveCategory")
    public String saveCategory(@ModelAttribute("category") Category category){
        categoryService.saveCategory(category);
        return "redirect:/category/list";
    }

    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("categoryID") int categoryID, Model model){
        Category category = categoryService.getCategory(categoryID);
        model.addAttribute("category", category);
        return "category-form";
    }

    @GetMapping("/delete")
    public String deleteCategory(@RequestParam("categoryID") int categoryID){
        categoryService.deleteCategory(categoryID);
        return "redirect:/category/list";
    }
}
