package service;

import model.Employee;

import java.util.List;

public interface EmployeeService {
    public List<Employee> getEmployeeList();
    public void addNewEmployee (Employee employee);

    public void deleteEmployee(int id);
}
