package com.koczy.spring.service;

import com.koczy.spring.entity.Customer;

import java.util.List;

public interface CustomerService {

    public List<Customer> getCustomers();

    public void saveCustomer(Customer customer);

    public Customer getCustomer(int customerID);

    public void deleteCustomer(int customerID);
}
