package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Report;
import util.DBConnection;

public class ReportDAO {

    // Add a new report
    public boolean addReport(Report report) {
        boolean status = false;

        try {
            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO reports(incidentType, description, location, date, status) VALUES(?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, report.getIncidentType());
            ps.setString(2, report.getDescription());
            ps.setString(3, report.getLocation());
            ps.setString(4, report.getDate());
            ps.setString(5, report.getStatus());

            int i = ps.executeUpdate();
            System.out.println("Rows inserted: " + i);

            if (i > 0) {
                status = true;
            }

            con.close();

        } catch (Exception e) {
            System.out.println("Error while inserting report:");
            e.printStackTrace();
        }
        


        return status;
    }

    // View all reports
    public List<Report> getAllReports() {

        List<Report> list = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM reports";
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Report report = new Report();

                report.setReportId(rs.getInt("Id"));
                report.setIncidentType(rs.getString("incidentType"));
                report.setDescription(rs.getString("description"));
                report.setLocation(rs.getString("location"));
                report.setDate(rs.getString("date"));
                report.setStatus(rs.getString("status"));

                list.add(report);
            }

            con.close();

        } catch (Exception e) {
            System.out.println("Error while inserting report:");
            e.printStackTrace();
        }
        

        return list;
    }
}