package model;

public class Report {

    private int reportId;
    private String incidentType;
    private String description;
    private String location;
    private String date;
    private String status;

    public Report() {
    }

    public Report(int reportId, String incidentType, String description,
                  String location, String date, String status) {
        this.reportId = reportId;
        this.incidentType = incidentType;
        this.description = description;
        this.location = location;
        this.date = date;
        this.status = status;
    }

    public int getReportId() {
        return reportId;
    }

    public void setReportId(int reportId) {
        this.reportId = reportId;
    }

    public String getIncidentType() {
        return incidentType;
    }

    public void setIncidentType(String incidentType) {
        this.incidentType = incidentType;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}