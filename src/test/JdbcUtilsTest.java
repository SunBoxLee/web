package test;

import org.junit.Test;
import utils.JdbcUtils;

import java.sql.SQLException;

public class JdbcUtilsTest {
    @Test
    public void JdbcUtils() throws Exception {
        System.out.println(JdbcUtils.getConnection());
    }
}
