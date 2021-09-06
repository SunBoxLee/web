package utils;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.alibaba.druid.pool.DruidPooledConnection;
import org.apache.commons.dbutils.DbUtils;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JdbcUtils {
    private static DruidDataSource dataSource;
    static {
        try {
        Properties ps = new Properties();
        InputStream is = JdbcUtils.class.getClassLoader().getResourceAsStream("jdbc.properties");
        ps.load(is);
        dataSource = (DruidDataSource) DruidDataSourceFactory.createDataSource(ps);

        //System.out.println(dataSource.getConnection());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

//    public static void main(String[] args) {
//    }
    public static Connection getConnection() throws SQLException {
        DruidPooledConnection conn = dataSource.getConnection();
        return conn;
    }
    public static void Close(Connection conn, Statement ps, ResultSet rs) {
        DbUtils.closeQuietly(rs);
        DbUtils.closeQuietly(ps);
        DbUtils.closeQuietly(conn);
    }
}
