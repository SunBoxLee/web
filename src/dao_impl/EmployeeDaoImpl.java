package dao_impl;

import bean.Employee;
import utils.JdbcUtils;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class EmployeeDaoImpl extends BaseDao implements EmployeeDao {
    @Override
    public int addEmployee(Employee employee) throws SQLException {
        String sql="insert into employees(`name`,phone,department,salary,username) values(?,?,?,?,?)";
        Connection conn= JdbcUtils.getConnection();
        int result = update(conn, sql, employee.getName(), employee.getPhone(), employee.getDepartment(),employee.getSalary(),employee.getUsername());
        JdbcUtils.Close(conn,null,null);
        return result;
    }

    @Override
    public int deleteEmployeeByName(String name) throws SQLException {
        String sql="delete from employees where name=?";
        Connection conn=JdbcUtils.getConnection();
        int result = update(conn, sql, name);
        JdbcUtils.Close(conn,null,null);
        return result;
    }

    @Override
    public int updateEmployeeByName(String name, Employee employee) throws SQLException {
        String sql="update  employees set name=?,phone=?,department=?,salary=?,username=? where name=?";
        Connection conn = JdbcUtils.getConnection();
        int result = update(conn, sql, employee.getName(), employee.getPhone(), employee.getDepartment(), employee.getSalary(), employee.getUsername(), name);
        JdbcUtils.Close(conn,null,null);
        return result;
    }

    @Override
    public Employee selectEmployeeByname(String name) throws SQLException {
        String sql="select `name`,phone,department,salary,username from employees where name=?";
        Connection conn = JdbcUtils.getConnection();
        Employee employee = getInstance(conn, Employee.class, sql, name);
        JdbcUtils.Close(conn,null,null);
        return employee;
    }


    @Override
    public List<Employee> selectEmployees() throws SQLException {
        String sql="select `name`,phone,department,salary,username from employees";
        Connection conn = JdbcUtils.getConnection();
        List<Employee> list = getList(conn, Employee.class, sql);
        JdbcUtils.Close(conn,null,null);
        return list;
    }

    @Override
    public int queryForEmployeeTotalCount() throws SQLException {
        String sql="select count(*) from employees";
        Connection conn = JdbcUtils.getConnection();
        Number value = (Number)getValue(conn, sql);
        int intValue = value.intValue();
        return intValue;
    }

    @Override
    public List<Employee> queryForEmployeeItems(int begin, int pageSize) throws SQLException {
        String sql="select `name`,phone,department,salary,username from employees limit ?,?";
        Connection conn=JdbcUtils.getConnection();
        List<Employee> list = getList(conn, Employee.class, sql, begin, pageSize);
        return list;
    }
}
