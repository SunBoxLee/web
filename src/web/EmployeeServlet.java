package web;

import bean.Employee;
import bean.Page;
import service_impl.EmployeeService;
import service_impl.EmployeeServiceImpl;
import utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class EmployeeServlet extends BaseServlet {
    EmployeeService employeeService=new EmployeeServiceImpl();
    protected void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setCharacterEncoding("UTF-8");
//        String name = new String(req.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
//        String phone = req.getParameter("phone");
//        String department = new String(req.getParameter("department").getBytes("ISO-8859-1"),"UTF-8");
//        int salary = Integer.parseInt(req.getParameter("salary"));
//        String username = req.getParameter("username");
//        System.out.println(username+","+department);
//        Employee employee = new Employee(name, phone, department, salary, username);
        Employee employee = WebUtils.copyParameterToBean(req.getParameterMap(), new Employee());
        employeeService.addEmployee(employee);
        //List<Employee> empolyees = employeeService.queryEmployees();
        //req.setAttribute("employees", empolyees);
        int num = employeeService.getTotal(10);
        Page<Employee> page = employeeService.page(num, 10);
        req.setAttribute("pageNo", page.getPageNo());
        req.setAttribute("pageTotal", page.getPageTotal());
        req.setAttribute("pageTotalCount", page.getPageTotalCount());
        req.setAttribute("employees",page.getItems());
        req.getRequestDispatcher("/html/all.jsp").forward(req,resp);
        //resp.sendRedirect(req.getContextPath()+"/html/all.jsp?action=selectEmployees");
    }
    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        employeeService.deleteEmployee(name);
//        List<Employee> empolyees = employeeService.queryEmployees();
//        req.setAttribute("employees", empolyees);
        String pageNo = req.getParameter("pageNo");
        int currentPage = Integer.parseInt(pageNo);
        Page<Employee> page = employeeService.page(currentPage, 10);
        req.setAttribute("pageNo", page.getPageNo());
        req.setAttribute("pageTotal", page.getPageTotal());
        req.setAttribute("pageTotalCount", page.getPageTotalCount());
        req.setAttribute("employees",page.getItems());
        req.getRequestDispatcher("/html/all.jsp").forward(req,resp);
        req.getRequestDispatcher("/html/all.jsp").forward(req,resp);
    }
    protected void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("进入");
        Employee employee = WebUtils.copyParameterToBean(req.getParameterMap(), new Employee());
        System.out.println(employee);
        HttpSession session = req.getSession();
        String name = (String) session.getAttribute("name");
        System.out.println(name);
        employeeService.updateEmployee(name,employee);
//        List<Employee> empolyees = employeeService.queryEmployees();
//        req.setAttribute("employees", empolyees);
        Object pageNo = session.getAttribute("pageNo");
        //System.out.println(pageNo);
        int currentPage= Integer.parseInt(pageNo.toString());
        System.out.println(currentPage);
        Page<Employee> page = employeeService.page(currentPage, 10);
        req.setAttribute("pageNo", page.getPageNo());
        req.setAttribute("pageTotal", page.getPageTotal());
        req.setAttribute("pageTotalCount", page.getPageTotalCount());
        req.setAttribute("employees",page.getItems());
        req.getRequestDispatcher("/html/all.jsp").forward(req,resp);
    }
    protected void select(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
//    protected void selectEmployees(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        List<Employee> empolyees = employeeService.queryEmployees();
//        req.setAttribute("employees", empolyees);
//        req.getRequestDispatcher("/html/all.jsp").forward(req,resp);
//    }
    protected void getInstance(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        Employee employee = employeeService.queryEmployeeByname(name);
        req.setAttribute("employee",employee);
        HttpSession session = req.getSession();
        session.setAttribute("name", name);
        session.setAttribute("pageNo", req.getParameter("pageNo"));
        System.out.println(req.getParameter("pageNo"));
        req.getRequestDispatcher("/html/update.jsp").forward(req,resp);
    }
    protected void page(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = Integer.parseInt(req.getParameter("pageNo"));
        //System.out.println(pageNo);
        int pageSize = Integer.parseInt(req.getParameter("pageSize"));
        //System.out.println(pageSize);
        Page<Employee> page=employeeService.page(pageNo,pageSize);
        //System.out.println(page);
        req.setAttribute("pageNo", page.getPageNo());
        req.setAttribute("pageTotal", page.getPageTotal());
        req.setAttribute("pageTotalCount", page.getPageTotalCount());
        req.setAttribute("employees",page.getItems());
        req.getRequestDispatcher("/html/all.jsp").forward(req,resp);
    }
}
