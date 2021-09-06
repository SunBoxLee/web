package service_impl;

import bean.User;

import java.sql.SQLException;

public interface UserService {

    public void register(User user) ;
    public User login(User user) ;
    //true表示用户名已被注册,false表示用户名可用
    public boolean existUsername(String username) ;
    public String getPath(String username);
    public int insertPhoto(String username, String file) ;
    public boolean isAdmin(String username) ;
}
