package dao_impl;

import bean.User;

import java.io.File;
import java.sql.SQLException;

public interface UserDao {

    public User queryUserByUsername(String username) throws SQLException;
    public int saveUser(User user) throws SQLException;
    public User queryUserByUsernamAndPassword(String username,String password) throws SQLException;
    public int insertPhoto(String username, String file) throws SQLException ;
    public String queryPhoto(String username) throws SQLException;
    public boolean isAdmin(String username) throws SQLException;
}
