/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;
import models.Staffer;
import DB.StafferQueries;
import DB.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


/**
 *
 * @author Bien Mandac
 */
public class StafferOps {
    
    public static boolean AddStaffer(Staffer staff)
    {   
        try{            
            String query = StafferQueries.addStaffer();
            
            ConnectionFactory connectionFactory = ConnectionFactory.getInstance();
            Connection conn = connectionFactory.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            
            ps.setString(1, staff.getFname());//First Name
            ps.setString(2, staff.getLname()); //Last Name
            ps.setString(3,staff.getIDNum()); //ID#
            ps.setString(4,staff.getPContact()); //Primary Contact #
            ps.setString(5,staff.getSContact()); //Secondary Contact #
            ps.setString(6,staff.getEmail()); // Email Address
            
            ps.executeUpdate();
            connectionFactory.closeStatement(ps);
            connectionFactory.closeConnection(conn);
            return true;            
            
        }catch(SQLException exception)
        {         
            return false;
        }      
        
    }
    public ArrayList<Staffer> getStafferList()
    {
        try{
            String query = StafferQueries.getAllStaffers();
            ArrayList<Staffer> stafflist = new ArrayList<Staffer>();
            
            ConnectionFactory connectionFactory = ConnectionFactory.getInstance();
            Connection conn = connectionFactory.getConnection(); 
            PreparedStatement ps = conn.prepareStatement(query);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            {
                Staffer s = new Staffer();
                s.setStaffID(rs.getInt("SID"));
                s.setFname(rs.getString("FNAME"));
                s.setLname(rs.getString("SNAME"));
                s.setIDNum(rs.getString("IDNO"));
                s.setPContact(rs.getString("PNUM"));
                s.setSContact(rs.getString("SNUM"));
                s.setEmail(rs.getString("EMAIL"));
                
                stafflist.add(s);
            }
            return stafflist;
        }
        catch(SQLException sql)
        {
            return null;
        }
    }
}
