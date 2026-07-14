package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReportDAO;
import model.Report;


public class ReportServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String incidentType = request.getParameter("incidentType");
        String description = request.getParameter("description");
        String location = request.getParameter("location");
        String date = request.getParameter("date");
        String status = request.getParameter("status");

        Report report = new Report();

        report.setIncidentType(incidentType);
        report.setDescription(description);
        report.setLocation(location);
        report.setDate(date);
        report.setStatus(status);

        ReportDAO dao = new ReportDAO();

        if (dao.addReport(report)) {
            response.sendRedirect("viewReports.jsp");
        } else {
            response.getWriter().println("Failed to submit report.");
        }
    }
}