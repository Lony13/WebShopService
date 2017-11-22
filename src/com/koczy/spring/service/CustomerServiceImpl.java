package com.koczy.spring.service;

import com.koczy.spring.dao.CustomerDAO;
import com.koczy.spring.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDAO customerDAO;

    @Override
    @Transactional
    public List<Customer> getCustomers() {
        return customerDAO.getCustomers();
    }

    @Override
    @Transactional
    public void saveCustomer(Customer customer) {
        customerDAO.saveCustomer(customer);
    }

    @Override
    @Transactional
    public Customer getCustomer(int customerID) {
        return customerDAO.getCustomer(customerID);
    }

    @Override
    @Transactional
    public void deleteCustomer(int customerID) {
        customerDAO.deleteCustomer(customerID);
    }
}
