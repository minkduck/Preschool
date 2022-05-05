/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.ClassDB;
import dao.StudentDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Parent;
import model.Student;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "RegistrationServlet", urlPatterns = {"/registration"})
public class RegistrationServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistrationServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrationServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("registration.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Student stu = (Student) request.getSession().getAttribute("stu");
        StudentDB sDB = new StudentDB();
        ClassDB cDB = new ClassDB();
        Parent pa = (Parent) request.getSession().getAttribute("PA");
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        LocalDate now = LocalDate.now();
        try {
            Date starDate = (Date) simpledateformat.parse(stu.getStuBirthday());
            Date endDate = (Date) simpledateformat.parse(now.toString());
            long star = starDate.getTime();
            long end = endDate.getTime();
            long tmp = Math.abs(star - end);
            long result = tmp / (86400000);
            long rs = result / 30;
            if (rs >= 12 && rs <= 18) {
                request.setAttribute("STUDENT", "Your ID of Student: " + sDB.addStudent(stu, pa.getParentID(), cDB.getGC1()));
                request.setAttribute("PAY", "Please pay via bank number: 01xxxxxx\n"
                        + "Or go to school to pay directly ");
                request.getRequestDispatcher("parent.jsp").forward(request, response);
            } else if (rs >= 19 && rs <= 24) {

                request.setAttribute("STUDENT", "Your ID of Student: " + sDB.addStudent(stu, pa.getParentID(), cDB.getGC2()));
                request.setAttribute("PAY", "Please pay via bank number: 01xxxxxx\n"
                        + "Or go to school to pay directly ");
                request.getRequestDispatcher("parent.jsp").forward(request, response);
            } else if (rs >= 25 && rs <= 36) {
                request.setAttribute("STUDENT", "Your ID of Student: " + sDB.addStudent(stu, pa.getParentID(), cDB.getGC3()));
                request.setAttribute("PAY", "Please pay via bank number: 01xxxxxx\n"
                        + "Or go to school to pay directly ");
                request.getRequestDispatcher("parent.jsp").forward(request, response);
            } else if (rs >= 37 && rs <= 48) {
                request.setAttribute("STUDENT", "Your ID of Student: " + sDB.addStudent(stu, pa.getParentID(), cDB.getGC4()));
                request.setAttribute("PAY", "Please pay via bank number: 01xxxxxx\n"
                        + "Or go to school to pay directly ");
                request.getRequestDispatcher("parent.jsp").forward(request, response);
            } else if (rs >= 49 && rs <= 60) {
                request.setAttribute("STUDENT", "Your ID of Student: " + sDB.addStudent(stu, pa.getParentID(), cDB.getGC5()));
                request.setAttribute("PAY", "Please pay via bank number: 01xxxxxx\n"
                        + "Or go to school to pay directly ");
                request.getRequestDispatcher("parent.jsp").forward(request, response);
            } else if (rs >= 61 && rs <= 72) {
                request.setAttribute("STUDENT", "Your ID of Student: " + sDB.addStudent(stu, pa.getParentID(), cDB.getGC6()));
                request.setAttribute("PAY", "Please pay via bank number: 01xxxxxx\n"
                        + "Or go to school to pay directly ");
                request.getRequestDispatcher("parent.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Invalid age to join the school ");
                request.getRequestDispatcher("registration.jsp").forward(request, response);
            }
        } catch (ParseException e) {
            System.out.println(e);
            e.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
