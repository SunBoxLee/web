package dao_impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import utils.JdbcUtils;

import java.lang.reflect.Field;
import java.sql.*;
import java.util.List;

public abstract class BaseDao {
    private QueryRunner queryRunner=new QueryRunner();
    public int update(Connection conn,String sql,Object...args) {
        try {
            return queryRunner.update(conn,sql,args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally
        {
                JdbcUtils.Close(conn, null, null);
        }
        return 0;
    }
   public <T> T getInstance(Connection conn,Class<T> clazz,String sql,Object...args)  {
//       PreparedStatement ps=null;
//       ResultSet rs=null;
//        try{
//       ps = conn.prepareStatement(sql);
//       for (int i = 0; i < args.length; i++) {
//           ps.setObject(i+1, args[i]);
//       }
//       rs = ps.executeQuery();
//       ResultSetMetaData rsmd = rs.getMetaData();
//       int columnCount = rsmd.getColumnCount();
//       if(rs.next()) {
//           T t = clazz.newInstance();
//           for (int i = 0; i < columnCount; i++) {
//               String columnLabel = rsmd.getColumnLabel(i + 1);
//               Object columnValue = rs.getObject(i + 1);
//               Field field = t.getClass().getDeclaredField(columnLabel);
//               field.setAccessible(true);
//               field.set(t, columnValue);
//           }
//           return t;
//       }
//       }catch (Exception e)
//        {
//            e.printStackTrace();
//        }
//        finally {
//            try {
//                JdbcUtils.Close(conn,ps,rs);
//            } catch (SQLException throwables) {
//                throwables.printStackTrace();
//            }
//        }
//        return null;
       try {
           return queryRunner.query(conn,sql,new BeanHandler<>(clazz),args);
       } catch (SQLException throwables) {
           throwables.printStackTrace();
       }finally {
               JdbcUtils.Close(conn, null, null);
       }
       return null;
   }
   public <T>List<T> getList(Connection conn,Class clazz,String sql,Object...args)
   {
       try {
           return queryRunner.query(conn,sql,new BeanListHandler<T>(clazz),args);
       } catch (SQLException throwables) {
           throwables.printStackTrace();
       } finally {
               JdbcUtils.Close(conn, null, null);
           }
       return  null;
   }
   public Object getValue(Connection conn,String sql,Object...args)
   {
       try {
           return queryRunner.query(conn, sql,new ScalarHandler(),args);
       } catch (SQLException throwables) {
           throwables.printStackTrace();
       } finally {
               JdbcUtils.Close(conn,null,null);
       }
       return null;
   }
}
