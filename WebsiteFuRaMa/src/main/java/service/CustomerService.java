package service;

import model.Customer;

import java.util.List;

public interface CustomerService {
    public List<Customer>  getCustomerList();
    public Customer getCustomer(int id);
    public Customer getIndexCustomer(int index);
    public void addCustomerIndex(int index, Customer customer);
    public void addCustomerList(Customer customer);
    public void deleteCustomer (int id);

}
