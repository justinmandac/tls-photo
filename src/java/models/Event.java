/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author Student
 */
public class Event {
    private int    EID;
    private String Name;
    private String Venue;
    private String SDate;
    private String STime;
    private String EDate;
    private String ETime;
    private String Details;

    /**
     * @return the Name
     */
    public String getName() {
        return Name;
    }

    /**
     * @param Name the Name to set
     */
    public void setName(String Name) {
        this.Name = Name;
    }

    /**
     * @return the Venue
     */
    public String getVenue() {
        return Venue;
    }

    /**
     * @param Venue the Venue to set
     */
    public void setVenue(String Venue) {
        this.Venue = Venue;
    }

    /**
     * @return the SDate
     */
    public String getSDate() {
        return SDate;
    }

    /**
     * @param SDate the SDate to set
     */
    public void setSDate(String SDate) {
        this.SDate = SDate;
    }

    /**
     * @return the STime
     */
    public String getSTime() {
        return STime;
    }

    /**
     * @param STime the STime to set
     */
    public void setSTime(String STime) {
        this.STime = STime;
    }

    /**
     * @return the EDate
     */
    public String getEDate() {
        return EDate;
    }

    /**
     * @param EDate the EDate to set
     */
    public void setEDate(String EDate) {
        this.EDate = EDate;
    }

    /**
     * @return the ETime
     */
    public String getETime() {
        return ETime;
    }

    /**
     * @param ETime the ETime to set
     */
    public void setETime(String ETime) {
        this.ETime = ETime;
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
     * @return the EID
     */
    public int getEID() {
        return EID;
    }

    /**
     * @param EID the EID to set
     */
    public void setEID(int EID) {
        this.EID = EID;
    }
}
