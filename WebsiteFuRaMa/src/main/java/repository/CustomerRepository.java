package repository;


import model.Customer;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository {
    List<Customer> customerList = new ArrayList<>();
    private BaseRepository baseRepository = new BaseRepository();

//   static {
//        customerList.add(new Customer(1,"2","2","2","2","2","2","2","2"));
//        customerList.add(new Customer(2,"2","2","2","2","2","2","2","2"));
//        customerList.add(new Customer(3,"2","2","2","2","2","2","2","2"));
//    }
    public List<Customer> getCustomerList() {
        List<Customer> customerList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = this.baseRepository
                    .getConnection().prepareStatement("SELECT * FROM khach_hang");
            Customer customer;
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                customerList.add(new Customer(  rs.getInt(1),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(6),
                        rs.getString(5),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(2),
                        rs.getString(9)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    public Customer getCustomer(int id) {
        for (Customer c: customerList
             ) {
            if(c.getId() == id) {
                return c;
            }

        }
        return null;
    }

    public Customer getIndexCustomer(int index) {
        Customer customer = customerList.get(index);
        return customer;
    }


    public  void addCustomerIndex(int index, Customer customer) {
        customerList.add(index,customer);
    }
    public void addCustomerList(Customer customer) {
        customerList.add(customer);
    }

    public void deleteCustomer (int id) {
        customerList.remove(new Customer(id));
    }
}
