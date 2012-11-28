/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author Student
 */
public class Assignment {
    private int    AID;
    private String Title;
    private String Section;
    private String Issue;
    private String Details;
    private String Deadline;

    /**
     * @return the AID
     */
    public int getAID() {
        return AID;
    }

    /**
     * @param AID the AID to set
     */
    public void setAID(int AID) {
        this.AID = AID;
    }

    /**
     * @return the Title
     */
    public String getTitle() {
        return Title;
    }

    /**
     * @param Title the Title to set
     */
    public void setTitle(String Title) {
        this.Title = Title;
    }

    /**
     * @return the Section
     */
    public String getSection() {
        return Section;
    }

    /**
     * @param Section the Section to set
     */
    public void setSection(String Section) {
        this.Section = Section;
    }


    /**
     * @return the Details
     */
    public String getDetails() {
        return Details;
    }

    /**
     * @param Details the Details to set
     */
    public void setDetails(String Details) {
        this.Details = Details;
    }

    /**
     * @return the Deadline
     */
    public String getDeadline() {
        return Deadline;
    }

    /**
     * @param Deadline the Deadline to set
     */
    public void setDeadline(String Deadline) {
        this.Deadline = Deadline;
    }

    /**
     * @return the Issue
     */
    public String getIssue() {
        return Issue;
    }

    /**
     * @param Issue the Issue to set
     */
    public void setIssue(String Issue) {
        this.Issue = Issue;
    }

}
