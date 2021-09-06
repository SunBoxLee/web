package dao_impl;

import bean.User;
import org.apache.commons.dbutils.QueryRunner;
import utils.JdbcUtils;

import java.io.File;
import java.sql.Connection;
import java.sql.SQLException;

public class UserDaoImpl extends BaseDao implements UserDao {
    @Override
    public User queryUserByUsername(String username) throws SQLException {
        String sql="select `id`,username,password,email from user_info where username=?";
        Connection conn= JdbcUtils.getConnection();
        User user = getInstance(conn, User.class, sql, username);
        JdbcUtils.Close(conn,null,null);
        return user;
    }

    @Override
    public int saveUser(User user) throws SQLException {
        String sql="insert into user_info(username,password,email) values(?,?,?)";
        Connection conn= JdbcUtils.getConnection();
        int result = update(conn, sql, user.getUsername(), user.getPassword(), user.getEmail());
        JdbcUtils.Close(conn,null,null);
        return result;
    }

    @Override
    public User queryUserByUsernamAndPassword(String username, String password) throws SQLException {
        String sql="select `id`,username,password,email from user_info where username=? and password=?";
        Connection conn= JdbcUtils.getConnection();
        User user = getInstance(conn, User.class, sql, username, password);
        JdbcUtils.Close(conn,null,null);
        return user;
    }
    @Override
    public int insertPhoto( String username,String file) throws SQLException {
        String sql="update employees set photo=? where username=?";
        Connection conn= JdbcUtils.getConnection();
        int result = update(conn, sql, file, username);
        JdbcUtils.Close(conn,null,null);
        return result;
    }

    @Override
    public String queryPhoto(String username) throws SQLException {
        String sql="select photo from employees where username=?";
        Connection conn= JdbcUtils.getConnection();
        String path = (String) getValue(conn, sql, username);
        JdbcUtils.Close(conn,null,null);
        return path ;
    }

    @Override
    public boolean isAdmin(String username) throws SQLException {
        String sql="select position from user_info where username=?";
        Connection conn= JdbcUtils.getConnection();
        Object value = getValue(conn, sql, username);
        if("HR".equals(value))
        {
            return true;
        }
        JdbcUtils.Close(conn,null,null);
        return false;
    }
}
