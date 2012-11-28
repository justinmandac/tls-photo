/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import DB.ConnectionFactory;
import DB.AssignmentQueries;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import models.Assignment;

/**
 *
 * @author Student
 */
public class AssignmentOps {
        public static boolean AddAssignment(Assignment assign)
    {
        try{
            String query = AssignmentQueries.AddAssignment();
            ConnectionFactory connectionFactory = ConnectionFactory.getInstance();
            Connection conn = connectionFactory.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            
            ps.setString(1,assign.getTitle());
            ps.setString(2,assign.getSection());
            ps.setString(3,assign.getIssue());
            ps.setString(4, assign.getDeadline());
           
                
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
