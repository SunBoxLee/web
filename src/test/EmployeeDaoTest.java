package test;

import bean.Employee;
import dao_impl.EmployeeDao;
import dao_impl.EmployeeDaoImpl;
import org.junit.Test;
import utils.JdbcUtils;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class EmployeeDaoTest {
    private EmployeeDao employeeDao=new EmployeeDaoImpl();
    @Test
    public void addEmployee() throws SQLException {
        employeeDao.addEmployee(new Employee("李晓龙","13865724838","人事部",5800,"admin"));
    }

    @Test
    public void deleteEmployeeByName() throws SQLException {
        employeeDao.deleteEmployeeByName("李晓龙");
    }

    @Test
    public void updateEmployeeByName() throws SQLException {
         employeeDao.updateEmployeeByName("李晓龙", new Employee("李小璐", "18972645837", "美术部", 8800, "EW"));

    }

    @Test
    public void selectEmployeeByname() throws SQLException {
        Employee employee = employeeDao.selectEmployeeByname("李小璐");
        System.out.println(employee);
    }

    @Test
    public void selectEmployees() throws SQLException {
        List<Employee> list = employeeDao.selectEmployees();
        list.forEach(System.out::println);
    }
    @Test
    public void queryForPageTotalCount() throws SQLException {
        System.out.println(employeeDao.queryForEmployeeTotalCount());

    }

    @Test
    public void queryForEmployeeItems() throws SQLException {
        List<Employee> employees = employeeDao.queryForEmployeeItems(1, 2);
        employees.forEach(System.out::println);
    }
}