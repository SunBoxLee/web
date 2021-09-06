package dao_impl;

import bean.Employee;

import java.sql.SQLException;
import java.util.List;

public interface EmployeeDao {

    public  int addEmployee(Employee employee) throws SQLException;
    public int deleteEmployeeByName(String name) throws SQLException;
    public int updateEmployeeByName(String name, Employee employee)throws SQLException ;
    public Employee selectEmployeeByname(String name) throws SQLException;
    public List<Employee> selectEmployees() throws SQLException;
    public int queryForEmployeeTotalCount() throws SQLException;
    public List<Employee> queryForEmployeeItems(int begin,int pageSize) throws SQLException;
}
