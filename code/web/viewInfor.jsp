<%@page import="model.Parent"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_parent.jsp" %>
<% if (session.getAttribute("PA") == null) {
        request.getRequestDispatcher("loginParent").forward(request, response);
    }
%>
<!-- start the middle column -->

<section>
    <%  ArrayList<Parent> pa = (ArrayList<Parent>) request.getSession().getAttribute("pa");
        System.out.println("view:" + pa);
        out.write("<table>"
                + "<tr>"
                + "<th>ID</th>"
                + "<th>First Name</th>"
                + "<th>Last Name</th>"
                + "<th>Birthday</th>"
                + "<th>Identity No</th>"
                + "<th>Phone number</th>"
                + "<th>Address</th>"
                + "<th>Email</th>"
                + "</tr>"
                + "</table");
        for (Parent parent : pa) {
            out.write("<TR>"
                    + "<TD>" + parent.getParentID() + "</TD>"
                    + "<TD>" + parent.getParentFname() + "</TD>"
                    + "<TD>" + parent.getParentLname() + "</TD>"
                    + "<TD>" + parent.getParentBirthday() + "</TD>"
                    + "<TD>" + parent.getParentNo() + "</TD>"
                    + "<TD>" + parent.getParentTel() + "</TD>"
                    + "<TD>" + parent.getAddress() + "</TD>"
                    + "<TD>" + parent.getEmail() + "</TD>"
                    + "</TR>");
        }
        out.write("</table>");
    %>
</section>


<!-- end the middle column -->


<%@ include file="/includes/footer.jsp" %>