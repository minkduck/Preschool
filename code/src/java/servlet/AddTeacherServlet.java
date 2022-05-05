/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.TeacherDB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Teacher;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "AddTeacherServlet", urlPatterns = {"/addTeacher"})
public class AddTeacherServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("addTeacher.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Teacher t = (Teacher) request.getSession().getAttribute("tea");
        TeacherDB tDB = new TeacherDB();
        int teaID = tDB.addTeacher(t);
        t.setTeaID(teaID);
        request.setAttribute("MSG", "ID of Teacher added: " + teaID);
        request.getRequestDispatcher("admin.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
