<%@page import="java.util.ArrayList"%>
<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_parent.jsp" %>
<% if (session.getAttribute("PA") == null) {
        request.getRequestDispatcher("loginParent").forward(request, response);
    }
%>
<!-- start the middle column -->

<section>
    <%  ArrayList<Student> stu = (ArrayList<Student>) request.getSession().getAttribute("stu");
        System.out.println("view:" + stu);
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
        for (Student student : stu) {
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


<%@ include file="/includes/footer.jsp" %>