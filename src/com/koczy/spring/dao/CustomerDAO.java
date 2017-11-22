package com.koczy.spring.dao;


import com.koczy.spring.entity.Customer;

import java.util.List;

public interface CustomerDAO {

    public List<Customer> getCustomers();

    public void saveCustomer(Customer customer);

    public Customer getCustomer(int customerID);

    public void deleteCustomer(int customerID);
}
