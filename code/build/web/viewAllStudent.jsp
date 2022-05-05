<%@page import="java.util.ArrayList"%>
<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_admin.jsp" %>
<% if (session.getAttribute("ADMIN") == null) {
        request.getRequestDispatcher("loginAdmin").forward(request, response);
    }
%>
<!-- start the middle column -->

<section>
    <%  ArrayList<Student> students = (ArrayList<Student>) request.getSession().getAttribute("student");
        System.out.println("view:" + students);
        out.write("<table>"
                + "<tr>"
                + "<th>ID</th>"
                + "<th>First Name</th>"
                + "<th>Last Name</th>"
                + "<th>Birthday</th>"
                + "<th>Gender</th>"
                + "<th>ParentID</th>"
                + "<th>ClassID</th>"
                + "</tr>"
                + "</table");
        for (Student student : students) {
            out.write("<TR>"
                    + "<TD>" + student.getStuID() + "</TD>"
                    + "<TD>" + student.getStuFname() + "</TD>"
                    + "<TD>" + student.getStuLname() + "</TD>"
                    + "<TD>" + student.getStuBirthday() + "</TD>"
                    + "<TD>" + student.getStuGender() + "</TD>"
                    + "<TD>" + student.getParentID()+ "</TD>"
                    + "<TD>" + student.getClassID()+ "</TD>"
                    + "</TR>");
        }
        out.write("</table>");
    %>
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>

