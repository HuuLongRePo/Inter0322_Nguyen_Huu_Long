package service;

import model.Customer;
import repository.CustomerRepository;

import java.util.List;

public class CustomerServiceImpl implements CustomerService {
    CustomerRepository customerRepository = new CustomerRepository();
    @Override
    public List<Customer> getCustomerList() {
        return customerRepository.getCustomerList();
    }

    @Override
    public Customer getCustomer(int id) {
        return customerRepository.getCustomer(id);
    }

    @Override
    public Customer getIndexCustomer(int index) {
        return customerRepository.getIndexCustomer(index);
    }

    @Override
    public void addCustomerIndex(int index, Customer customer) {
        customerRepository.addCustomerIndex(index,customer);

    }

    @Override
    public void addCustomerList(Customer customer) {
        customerRepository.addCustomerList(customer);
    }

    @Override
    public void deleteCustomer(int id) {
        customerRepository.deleteCustomer(id);
    }

}
