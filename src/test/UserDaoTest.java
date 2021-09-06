package test;

import bean.User;
import dao_impl.UserDao;
import dao_impl.UserDaoImpl;
import org.junit.Test;

import java.sql.SQLException;

import static org.junit.Assert.*;

public class UserDaoTest {

    @Test
    public void queryUserByUsername() {
        UserDao userDao=new UserDaoImpl();
        try {
            System.out.println(userDao.queryUserByUsername("admin"));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Test
    public void saveUser() {
        UserDao userDao=new UserDaoImpl();
        User user=new User("hero","123456","hero@sina.com");
        try {
            int res = userDao.saveUser(user);
            System.out.println(res);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        System.out.println();
    }

    @Test
    public void queryUserByUsernamAndPassword() {
        UserDao userDao=new UserDaoImpl();
        try {
            System.out.println(userDao.queryUserByUsernamAndPassword("admin","123456"));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}