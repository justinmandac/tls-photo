/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
/**
 *
 * @author Student
 */
public abstract class ConnectionFactory {
        
    public static ConnectionFactory getInstance() {
        return new DBConnector();
    }
    public abstract Connection getConnection();
    
    public boolean closeConnection(Connection conn){
        try{
            conn.close();
            return true;
        }catch(Exception e)
        {
            return false;
        }
    }
    
    public boolean closeResultSet(ResultSet rs){
        try{
            rs.close();
            return true;
        }catch(Exception e)
        {
            return false;
        }
    }
    
    public boolean closeStatement(Statement st)
    {
        try{
            st.close();
            return true;
        }catch(Exception e)
        {
            return false;
        }
    }
    
}
