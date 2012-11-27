/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

/**
 *
 * @author Student
 */
public class StafferQueries {
    
    public static String addStaffer()
    {
        return "INSERT INTO STAFFER(FNAME,SNAME,IDNO,"
                + "PNUM,SNUM,EMAIL) VALUES (?,?,?,?,?,?);";
    }
    
    public static String getAllStaffers()
    {
        return "SELECT * FROM STAFFER;";
    }
    
    public static String delStaffer()
    {
        return "DELETE FROM STAFFER WHERE IDNO=?;";
    }
}
