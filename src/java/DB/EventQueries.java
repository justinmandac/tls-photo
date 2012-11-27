/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

/**
 *
 * @author Student
 */
public class EventQueries {
    public static String AddEvent()
    {
        return "INSERT INTO EVENT (NAME,VENUE,SDATE,EDATE,STIME,ETIME) VALUES(?,?,?,?,?,?);";
    }
}
