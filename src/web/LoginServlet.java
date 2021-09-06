package web;

import bean.User;
import service_impl.UserService;
import service_impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {
    private UserService userService=new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        HttpSession session = req.getSession();
        session.setAttribute("username",username);
        User user = new User(username, password);
        User login= userService.login(user);
        if(login!=null)
        {
            System.out.println("登录成功");
            if(userService.isAdmin(username))
            {
                req.getRequestDispatcher("/html/index_m.jsp").forward(req,resp);
            }
            else {
                req.getRequestDispatcher("/html/index.jsp").forward(req, resp);
            }
        }else
        {
            System.out.println("用户名或密码错误");
            req.setAttribute("msg", "用户名或密码错误");
            req.getRequestDispatcher("/login.jsp").forward(req,resp);
        }
    }
}
