package service_impl;

import bean.Employee;
import bean.Page;

import java.util.List;

public interface EmployeeService {
    public void addEmployee(Employee employee);
    public void deleteEmployee(String name);
    public void updateEmployee(String name, Employee employee);
    public Employee queryEmployeeByname(String name);
    public List<Employee> queryEmployees();
    public Page<Employee> page(int pageNo, int pageSize);
    public int getTotal(int pageSize);
}
