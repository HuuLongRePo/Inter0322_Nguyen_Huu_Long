package services.Impl;

import models.Persons.Customer;
import models.Persons.Employee;
import services.Interface.CustomerService;


import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

public class CustomerServiceImpl implements CustomerService {
    private  static LinkedList<Customer> customerList = new LinkedList<>();
    private static Scanner scanner = new Scanner(System.in);
    @Override
    public void display() {
        for (Customer customer:customerList
        ) {
            System.out.println(customer.toString());

        }
    }


    @Override
    public void addNew() {
        System.out.println("Nhập mã kh: ");
        int id=Integer.parseInt(scanner.nextLine());
        System.out.println("Nhập tên kh: ");
        String name = scanner.nextLine();
        System.out.println("Nhập tuổi kh: ");
        int age = Integer.parseInt(scanner.nextLine());
        System.out.println("Nhập giới tính kh: ");
        boolean sex = Boolean.parseBoolean(scanner.nextLine());
        System.out.println("Nhập địa chỉ kh: ");
        String adress=scanner.nextLine();
        System.out.println("Nhập id Card: ");
        String idCard =scanner.nextLine();
        System.out.println("Nhập email: ");
        String email = scanner.nextLine();
        System.out.println("Nhập Sđt kh: ");
        String numberPhone = scanner.nextLine();
        System.out.println("Nhập loại kh: ");
        String customerType = scanner.nextLine();
        Customer nc = new Customer(id,name,age,sex,adress,idCard,email,numberPhone,customerType);
        customerList.add(nc);
    }

    @Override
    public void edit() {
        try {
            scanner.nextLine();
            System.out.println("Nhập vào id kh cần Sửa:");
            int idnc;
            idnc=Integer.parseInt(scanner.nextLine());
            for (Customer customer:customerList)
            {
                for (int i =0;i<customerList.size();i++)
                {
                    if (i==customerList.indexOf(customer)){
                        if(customer.getId()==idnc){
                            System.out.println("Sửa thông tin kh có id là "+idnc);
                            customer.setId(idnc);
                            System.out.println("Nhập tên kh: ");
                            customer.setName(scanner.nextLine());
                            System.out.println("Nhập tuổi kh: ");
                            customer.setAge(Integer.parseInt(scanner.nextLine()));
                            System.out.println("Nhập giới tính kh: ");
                            customer.setSex(Boolean.parseBoolean(scanner.nextLine()));
                            System.out.println("Nhập địa chỉ kh: ");
                            customer.setAdress(scanner.nextLine());
                            System.out.println("Nhập id Card: ");
                            customer.setIdCard(scanner.nextLine());
                            System.out.println("Nhập email: ");
                            customer.setEmail(scanner.nextLine());
                            System.out.println("Nhập Số đt khách hàng: ");
                            customer.setNumberPhone( scanner.nextLine());
                            System.out.println("Nhập loại khách hàng: ");
                            customer.setCustomeType( scanner.nextLine());
                        }
                        else if(i!=customerList.indexOf(customer.getId())){
                            i++;
                        }
                        else{
                            System.out.println("Không tìm thấy id trong danh sách!!");
                        }

                    }
                }


            }}catch (NumberFormatException e){
            System.out.println(e);
        }





    }

    @Override
    public void delete() {
        try {
            scanner.nextLine();
            System.out.println("Nhập vào id kh cần Xóa:");
            int idnc;
            idnc=Integer.parseInt(scanner.nextLine());
            LinkedList<Customer> removeCustomers = new LinkedList<>();
            for (Customer customer:customerList)
            {
                for (int i =0;i<=customerList.size();i++)
                {
                    if (i==customerList.indexOf(customer)){
                        if(customer.getId()==idnc){

                            removeCustomers.add(customer);
                            System.out.println("Xóa thông tin kh có id là "+idnc);
                        }
                        else if(i!=customerList.indexOf(customer.getId())){
                            i++;
                        }
                        else{
                            System.out.println("Không tìm thấy id trong danh sách!!");
                        }

                    }
                }


            }
        customerList.removeAll(removeCustomers);
        }catch (NumberFormatException e){
            System.out.println("Nhập lại !! sai rồi!!");
        }
    }
}
