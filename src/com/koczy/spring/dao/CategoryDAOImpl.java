package com.koczy.spring.dao;

import com.koczy.spring.entity.Category;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Category> getCategories() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Category order by categoryName", Category.class);
        List<Category> categories = query.getResultList();
        return categories;
    }

    @Override
    public void saveCategory(Category category) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(category);
    }

    @Override
    public Category getCategory(int categoryID) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Category.class, categoryID);
    }

    @Override
    public void deleteCategory(int categoryID) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete from Category where id=:categoryID");
        query.setParameter("categoryID", categoryID);
        query.executeUpdate();
    }
}
