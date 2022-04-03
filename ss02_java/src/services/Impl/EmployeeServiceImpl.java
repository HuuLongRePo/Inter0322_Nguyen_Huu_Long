package services.Impl;

import models.Persons.Employee;
import services.Interface.EmployeeService;

import utils.ReadWriteFile;

import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import static utils.ReadWriteFile.*;

public class EmployeeServiceImpl implements EmployeeService {
    private static List<Employee> employeeList = new ArrayList<>();
    private static Scanner scanner = new Scanner(System.in);

    @Override
    public void display() {
        employeeList = (List<Employee>) read("D:\\InternShip\\CodeGym InternShip\\Day_1\\Inter0322_Nguyen_Huu_Long\\ss02_java\\src\\data\\employee.csv");
        for (Employee employee : employeeList
        ) {
            System.out.println(employee.toString());

        }
    }

    @Override
    public void addNew() throws FileNotFoundException {
        try {
            System.out.println("Nhập mã nv: ");
            int id = Integer.parseInt(scanner.nextLine());
            System.out.println("Nhập tên nv: ");
            String name = scanner.nextLine();
            System.out.println("Nhập tuổi nv: ");
            int age = Integer.parseInt(scanner.nextLine());
            System.out.println("Nhập giới tính nv: ");
            boolean sex = Boolean.parseBoolean(scanner.nextLine());
            System.out.println("Nhập địa chỉ nv: ");
            String adress = scanner.nextLine();
            System.out.println("Nhập id Card: ");
            String idCard = scanner.nextLine();
            System.out.println("Nhập email: ");
            String email = scanner.nextLine();
            System.out.println("Nhập level: ");
            String level = scanner.nextLine();
            System.out.println("Nhập vị trí: ");
            String position = scanner.nextLine();
            System.out.println("Nhập lương: ");
            int salary = Integer.parseInt(scanner.nextLine());
            Employee ne = new Employee(id, name, age, sex, adress, idCard, email, level, position, salary);
            employeeList.add(ne);
            write(employeeList, "D:\\InternShip\\CodeGym InternShip\\Day_1\\Inter0322_Nguyen_Huu_Long\\ss02_java\\src\\data\\employee.csv");

        } catch (NullPointerException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void edit() {
        try {
            scanner.nextLine();
            System.out.println("Nhập vào id nv cần Sửa:");
            int idn;
            idn = Integer.parseInt(scanner.nextLine());
            for (Employee employee : employeeList) {
                for (int i = 0; i <= employeeList.size(); i++) {
                    if (i == employeeList.indexOf(employee)) {
                        if (employee.getId() == idn) {
                            System.out.println("Sửa thông tin nhân viên có id là " + idn);
                            employee.setId(idn);
                            System.out.println("Nhập tên nv: ");
                            employee.setName(scanner.nextLine());
                            System.out.println("Nhập tuổi nv: ");
                            employee.setAge(Integer.parseInt(scanner.nextLine()));
                            System.out.println("Nhập giới tính nv: ");
                            employee.setSex(Boolean.parseBoolean(scanner.nextLine()));
                            System.out.println("Nhập địa chỉ nv: ");
                            employee.setAdress(scanner.nextLine());
                            System.out.println("Nhập id Card: ");
                            employee.setIdCard(scanner.nextLine());
                            System.out.println("Nhập email: ");
                            employee.setEmail(scanner.nextLine());
                            System.out.println("Nhập level: ");
                            employee.setLevel(scanner.nextLine());
                            System.out.println("Nhập vị trí: ");
                            employee.setPosition(scanner.nextLine());
                            System.out.println("Nhập lương: ");
                            employee.setSalary((int) scanner.nextDouble());
                        } else if (i != employeeList.indexOf(employee)) {
                            i++;
                        } else {
                            System.out.println("Không tìm thấy id trong danh sách!!");
                        }

                    }
                }


            }
        } catch (NumberFormatException e) {
            System.out.println("Nhập lại !! sai rồi!!");
        }


    }

    @Override
    public void delete() {
        try {
            scanner.nextLine();
            System.out.println("Nhập vào id nv cần Xóa:");
            int idn;
            idn = Integer.parseInt(scanner.nextLine());
            List<Employee> removeEmployees = new ArrayList<>();
            for (Employee employee : employeeList) {
                for (int i = 0; i < employeeList.size(); i++) {
                    if (i == employeeList.indexOf(employee)) {
                        if (employee.getId() == idn) {
                            System.out.println("Xóa thông tin nhân viên có id là " + idn);
                            removeEmployees.add(employee);

                        } else if (i != employeeList.indexOf(employee)) {
                            i++;
                        } else {
                            System.out.println("Không tìm thấy id trong danh sách!!");
                        }

                    }
                }
            }
            employeeList.removeAll(removeEmployees);
        } catch (NumberFormatException e) {
            System.out.println("Nhập lại !! sai rồi!!");
        }
    }
}
