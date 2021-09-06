package test;

import bean.User;
import org.junit.Test;
import service_impl.UserService;
import service_impl.UserServiceImpl;

import java.sql.SQLException;

import static org.junit.Assert.*;

public class UserServiceTest {
    UserService userService=new UserServiceImpl();

    @Test
    public void register() throws SQLException {
        userService.register(new User("EW","123456","EmmaWtson@outlook.com"));
    }

    @Test
    public void login() throws SQLException {
        User user = userService.login(new User("admin", "123456"));
        if(user!=null)
        {
            System.out.println("欢迎用户"+user.getUsername()+"登录!");
        }
        else
        {
            System.out.println("用户名或密码错误,请重新登录!");
        }
    }

    @Test
    public void existUsername() throws SQLException {
        boolean exist = userService.existUsername("EW");
        if(exist)
        {
            System.out.println("用户名已存在!");
        }
        else
        {
            System.out.println("用户名可用!");
        }
    }
}