package repository;

import model.Employee;

import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository {

    private static List<Employee> employeeList = new ArrayList<>();
    static {
        employeeList.add(new Employee(1,"Nhac","20/12/2000","123456",
                "654321","abcd@gmail.com",1,2,100000.9));
        employeeList.add(new Employee(2,"Nhac","20/12/2000","123456",
                "654321","abcd@gmail.com",1,2,100000.9));
        employeeList.add(new Employee(3,"Nhac","20/12/2000","123456",
                "654321","abcd@gmail.com",1,2,100000.9));
        employeeList.add(new Employee(4,"Nhac","20/12/2000","123456",
                "654321","abcd@gmail.com",1,2,100000.9));
    }

    public List<Employee> getEmployeeList() {
        return employeeList;
    }

    public void addNewEmployee(Employee employee) {
        employeeList.add(employee);
    }

    public void deleteEmployee(int id) {
        employeeList.remove(new Employee(id));
    }
}
