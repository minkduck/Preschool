/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Parent;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "LoginParentServlet", urlPatterns = {"/loginParent"})
public class LoginParentServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginParentServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginParentServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("loginParent.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int userParent = Integer.parseInt(request.getParameter("userParent"));
            String passParent = request.getParameter("passParent");
            Parent pa = new Parent();
            Parent p =pa.loginParent(userParent, passParent);
            if (p == null) {
                request.getRequestDispatcher("loginParent.jsp").forward(request, response);
            } else {
                request.getSession().setAttribute("PA", p);
                request.getSession().setAttribute("PARENT", "Your ID account:" + p.getParentID());
                request.getRequestDispatcher("parent.jsp").forward(request, response);
            }

        } catch (Exception e) {
        }
    }


@Override
        public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

