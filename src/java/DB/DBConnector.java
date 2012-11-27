/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Student
 */
public class DBConnector extends ConnectionFactory {
    private String driver="com.mysql.jdbc.Driver";
    private String url="jdbc:mysql://localhost:3306/tlsphoto";
    private String username="root";
    private String password="root";
    
    @Override
    public Connection getConnection()    {
        try{            
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(url, username, password);
            return connection;
        }catch(ClassNotFoundException cnfe)        {
            cnfe.printStackTrace();
            return null;
        }catch(SQLException sqle)        {
            sqle.printStackTrace();
            return null;
        }
     
    }

}
