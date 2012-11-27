/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

/**
 *
 * @author Student
 */
public class AssignmentQueries {
    public static String AddAssignment()
    {
        return "INSERT INTO ASSIGNMENT (NAME,SECTION,ISSUE,DLINE) "
                + "VALUES(?,?,?,?);";
    }
}
