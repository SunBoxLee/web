package test;

import bean.Employee;
import org.junit.Test;
import service_impl.EmployeeService;
import service_impl.EmployeeServiceImpl;

import java.util.List;

public class EmployeeServiceTest {
    private EmployeeService employeeService=new EmployeeServiceImpl();
    @Test
    public void addEmployee() {
        employeeService.addEmployee(new Employee("石力","18872675449","信息部",12000,"sl123"));
    }

    @Test
    public void deleteEmployee() {
        employeeService.deleteEmployee("石力");
    }

    @Test
    public void updateEmployee() {
        employeeService.updateEmployee("李玉龙",new Employee("石力","17652544433","安保部",6500,"lyl123"));
    }

    @Test
    public void queryEmployeeByname() {
        Employee employee = employeeService.queryEmployeeByname("李玉龙");
        System.out.println(employee);
    }

    @Test
    public void queryEmployees() {
        List<Employee> employees = employeeService.queryEmployees();
        employees.forEach(System.out::println);
    }
    @Test
    public  void page()
    {
        System.out.println(employeeService.page(2,2));
    }
}