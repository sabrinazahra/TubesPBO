//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//
//
//
//public class Config
//{
//
//    private static Connection MySQLConfig;
//    public static Connection configDB()throws SQLException
//    {
//        try
//        {
//            String url ="jdbc.mysql://localhost:3306/tubes";
//            String user = "root";
//            String pass = "";
//            
//            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//            MySQLConfig = DriverManager.getConnection(url, user, pass);
//        }
//        catch(SQLException e)
//        {
//            System.out.println("fail to connect " + e.getMessage());
//        }
//        return MySQLConfig;
//            
//    }
//}
