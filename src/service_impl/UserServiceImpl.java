package service_impl;

import bean.User;
import dao_impl.UserDao;
import dao_impl.UserDaoImpl;
import utils.JdbcUtils;

import java.sql.Connection;
import java.sql.SQLException;

public class UserServiceImpl implements UserService {
    private UserDao userDao = new UserDaoImpl();

    @Override
    public void register(User user)  {
        try {
            userDao.saveUser(user);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public User login(User user) {
        try {
            return userDao.queryUserByUsernamAndPassword(user.getUsername(), user.getPassword());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean existUsername(String username) {
        User user = null;
        try {
            user = userDao.queryUserByUsername(username);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        if (null == user) {
            return false;
        }
        return true;
    }

    @Override
    public String getPath(String username) {
        try {
            String s = userDao.queryPhoto(username);
            return s;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public int insertPhoto(String username, String file) {
        try {
            return userDao.insertPhoto(username, file);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return 0;
    }

    @Override
    public boolean isAdmin(String username)  {
        try {
            return userDao.isAdmin(username);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }
}
