package web;

import bean.User;
import service_impl.UserService;
import service_impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;

public class RegisterServlet extends HttpServlet {
    private UserService userService=new UserServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        System.out.println(username);
        String password = req.getParameter("password");
        System.out.println(password);
        String email = req.getParameter("email");
        System.out.println(email);
        String code = req.getParameter("code");
        System.out.println(code);
        String token = (String) req.getSession().getAttribute(KAPTCHA_SESSION_KEY);
        req.getSession().removeAttribute(KAPTCHA_SESSION_KEY);
        //System.out.println(req.getAttribute("msg"));
        if(token.equalsIgnoreCase(code)&&token!=null)
        {
                if(userService.existUsername(username))
                {
                    System.out.println("用户名已存在!");
                    req.setAttribute("msg", "用户名已存在 ");
                    req.getRequestDispatcher("/register.jsp").forward(req,resp);
                }
                else
                {
                    userService.register(new User(username,password,email));
                    req.getRequestDispatcher("/registerSuccess.jsp").forward(req,resp);
                }
        }else
        {
            System.out.println("验证码错误");
            req.setAttribute("msg", "验证码错误");
            req.getRequestDispatcher("/register.jsp").forward(req,resp);
        }
    }
}
