/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author Student
 */
public class Staffer {
    private int StaffID;
    private String Fname;
    private String Lname;
    private String IDNum;
    private String PContact;
    private String SContact;
    private String Email;

    public Staffer()
    {
        
    }
    /**
     * @return the StaffID
     */
    public int getStaffID() {
        return StaffID;
    }

    /**
     * @param StaffID the StaffID to set
     */
    public void setStaffID(int StaffID) {
        this.StaffID = StaffID;
    }

    /**
     * @return the Fname
     */
    public String getFname() {
        return Fname;
    }

    /**
     * @param Fname the Fname to set
     */
    public void setFname(String Fname) {
        this.Fname = Fname;
    }

    /**
     * @return the Lname
     */
    public String getLname() {
        return Lname;
    }

    /**
     * @param Lname the Lname to set
     */
    public void setLname(String Lname) {
        this.Lname = Lname;
    }

    /**
     * @return the IDNum
     */
    public String getIDNum() {
        return IDNum;
    }

    /**
     * @param IDNum the IDNum to set
     */
    public void setIDNum(String IDNum) {
        this.IDNum = IDNum;
    }

    /**
     * @return the PContact
     */
    public String getPContact() {
        return PContact;
    }

    /**
     * @param PContact the PContact to set
     */
    public void setPContact(String PContact) {
        this.PContact = PContact;
    }

    /**
     * @return the SContact
     */
    public String getSContact() {
        return SContact;
    }

    /**
     * @param SContact the SContact to set
     */
    public void setSContact(String SContact) {
        this.SContact = SContact;
    }

    /**
     * @return the Email
     */
    public String getEmail() {
        return Email;
    }

    /**
     * @param Email the Email to set
     */
    public void setEmail(String Email) {
        this.Email = Email;
    }
    
}
