/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.ClassDB;
import dao.TeacherDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Classes;
import model.Teacher;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "AddClassServlet", urlPatterns = {"/addClass"})
public class AddClassServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddClassServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddClassServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("addClass.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Classes cla = (Classes) request.getSession().getAttribute("cla");
        ClassDB cDB = new ClassDB();
        TeacherDB tDB = new TeacherDB();
        if (cla.getTeaID() == tDB.getCTeaID()) {
            int claID = cDB.addClass(cla);
            cla.setClassID(claID);
            request.setAttribute("MSG", "ID of Class added: " + claID);
            request.getRequestDispatcher("admin.jsp").forward(request, response);
        } else {

            request.setAttribute("err", "Don't have any this ID teacher");
            request.getRequestDispatcher("addClass.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
