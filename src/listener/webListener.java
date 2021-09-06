package listener;

import com.alibaba.druid.util.JdbcUtils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.DriverManager;
import java.sql.SQLException;

public class webListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        while (DriverManager.getDrivers().hasMoreElements())
        {
            try {
                DriverManager.deregisterDriver(DriverManager.getDrivers().nextElement());
            }
            //AbandonedConnectionCleanupThread.checkedShutdown();
            catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }
}
