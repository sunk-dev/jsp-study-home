package db;

import com.mysql.cj.xdevapi.JsonString;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcUtil {


    public static Connection getConnection(){

        Connection con=null;
        try{
            Context init=new InitialContext();
            DataSource ds=(DataSource) init.lookup("java:comp/env/jdbc/MYSQLDB");
            con=ds.getConnection();
            con.setAutoCommit(false);



        }catch (Exception e){
            e.printStackTrace();
        }


        return con;
    }

    public static void commit(Connection con){
        try{
            con.commit();
            System.out.println("커밋 완료");

        }catch (Exception e){
            e.printStackTrace();
        }


    }

    public static void rollback(Connection con){


        try {
            con.rollback();
            System.out.println("롤백 성공");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }



    public static void close(Connection con){
        try {
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return;
    }

    public static void close(PreparedStatement ps){
        try {

            ps.close();

        } catch (SQLException e) {
           e.printStackTrace();
        }
    }

    public static void close(ResultSet rs){
        try {

            rs.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}
