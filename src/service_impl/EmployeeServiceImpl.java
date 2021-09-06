package service_impl;

import bean.Employee;
import bean.Page;
import dao_impl.EmployeeDao;
import dao_impl.EmployeeDaoImpl;

import java.sql.SQLException;
import java.util.List;

public class EmployeeServiceImpl implements EmployeeService{

    private EmployeeDao employeeDao=new EmployeeDaoImpl();
    @Override
    public void addEmployee(Employee employee) {
        try {
            employeeDao.addEmployee(employee);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void deleteEmployee(String name) {
        try {
            employeeDao.deleteEmployeeByName(name);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void updateEmployee(String name, Employee employee) {
        try {
            employeeDao.updateEmployeeByName(name, employee);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public Employee queryEmployeeByname(String name) {
        try {
            Employee employee = employeeDao.selectEmployeeByname(name);
            return employee;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Employee> queryEmployees() {
        try {
            List<Employee> employees = employeeDao.selectEmployees();
            return employees;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public Page<Employee> page(int pageNo, int pageSize) {
        Page<Employee> page = new Page<>();
        page.setPageNo(pageNo);
        page.setPageSize(pageSize);
        int pageTotalCount= 0;
        try {
            pageTotalCount = employeeDao.queryForEmployeeTotalCount();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        page.setPageTotalCount(pageTotalCount);
        int pageTotal=pageTotalCount%pageSize==0?pageTotalCount/pageSize:pageTotalCount/pageSize+1;
        page.setPageTotal(pageTotal);
        if(pageNo<1)
        {
            page.setPageNo(1);
            pageNo=1;
        }
        if(pageNo>pageTotal)
        {
            page.setPageNo(pageTotal);
            pageNo=pageTotal;
        }
        int begin=(pageNo-1)*pageSize;
        List<Employee> items= null;
        try {
            items = employeeDao.queryForEmployeeItems(begin,pageSize);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        page.setItems(items);
        return page;
    }

    @Override
    public int getTotal(int pageSize) {
        int pageTotalCount= 0;
        try {
            pageTotalCount = employeeDao.queryForEmployeeTotalCount();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        int pageTotal=pageTotalCount%pageSize==0?pageTotalCount/pageSize:pageTotalCount/pageSize+1;
        return pageTotal;
    }
}
