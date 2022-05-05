<%@page import="java.util.ArrayList"%>
<%@page import="model.Teacher"%>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_admin.jsp" %>
<% if (session.getAttribute("ADMIN") == null) {
        request.getRequestDispatcher("loginAdmin").forward(request, response);
    }
%>
<!-- start the middle column -->

<section>
    <%  ArrayList<Teacher> tea = (ArrayList<Teacher>) request.getSession().getAttribute("tea");
        System.out.println("view:" + tea);
        out.write("<table>"
                + "<tr>"
                + "<th>ID</th>"
                + "<th>First Name</th>"
                + "<th>Last Name</th>"
                + "<th>Birthday</th>"
                + "<th>Identity No</th>"
                + "<th> Address</th>"
                + "<th> Phone number </th>"
                + "<th> Email </th>"
                + "<th> Gender </th>"
                + "<th> Degree </th>"
                + "</tr>" 
                + "</table");
        for (Teacher teacher : tea) {
            out.write("<TR>"
                    + "<TD>" + teacher.getTeaID() + "</TD>"
                    + "<TD>" + teacher.getTeaFname() + "</TD>"
                    + "<TD>" + teacher.getTeaLname() + "</TD>"
                    + "<TD>" + teacher.getTeaBirthday() + "</TD>"
                    + "<TD>" + teacher.getTeaNo() + "</TD>"
                    + "<TD>" + teacher.getAddress() + "</TD>"
                    + "<TD>" + teacher.getTeaTel() + "</TD>"
                    + "<TD>" + teacher.getEmail() + "</TD>"
                    + "<TD>" + teacher.getGender() + "</TD>"
                    + "<TD>" + teacher.getDegree() + "</TD>"
                    + "</TR>");
        }
        out.write("</table>");
    %>
</section>


<!-- end the middle column -->


<%@ include file="/includes/footer.jsp" %>