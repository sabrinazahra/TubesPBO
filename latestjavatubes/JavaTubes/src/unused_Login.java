import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Chutenks
 */
public class unused_Login {
    public Connection con;
    public PreparedStatement pst;
    
    //login querry -> database
    public void login() throws SQLException, ClassNotFoundException{
        Class.forName("com.mysql.jdbc.Driver");  
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tubes","root","");
        String sql = "Select * from admin where username=? and password =?";
        pst = con.prepareStatement(sql);
    }
    
}