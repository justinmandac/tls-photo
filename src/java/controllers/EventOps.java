/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;
import models.Event;
import DB.EventQueries;
import DB.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 *
 * @author Student
 */
public class EventOps {
    public static boolean AddEvent(Event event)
    {
        try{
            String query = EventQueries.AddEvent();
            ConnectionFactory connectionFactory = ConnectionFactory.getInstance();
            Connection conn = connectionFactory.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            
            ps.setString(1,event.getName());
            ps.setString(2,event.getVenue());
            ps.setString(3,event.getSDate());
            ps.setString(4,event.getEDate());
            ps.setString(5,event.getSTime());
            ps.setString(6,event.getETime());
                
            ps.executeUpdate();
            connectionFactory.closeStatement(ps);
            connectionFactory.closeConnection(conn);        
            
            return true;
            
        }catch(SQLException exception)
        {
            return false;
        }
    }
}
