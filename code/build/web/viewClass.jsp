<%@page import="java.util.ArrayList"%>
<%@page import="model.Classes"%>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_admin.jsp" %>
<% if (session.getAttribute("ADMIN") == null) {
        request.getRequestDispatcher("loginAdmin").forward(request, response);
    }
%>
<!-- start the middle column -->

<section>
    <%  ArrayList<Classes> cla = (ArrayList<Classes>) request.getSession().getAttribute("cla");
        System.out.println("view:" + cla);
        out.write("<table>"
                + "<tr>"
                + "<th>ID</th>"
                + "<th>Class Name</th>"
                + "<th>Ages</th>"
                + "<th>TeaID</th>"
                + "</tr>"
                + "</table");
        for (Classes classes : cla) {
            out.write("<TR>"
                    + "<TD>" + classes.getClassID()+ "</TD>"
                    + "<TD>" + classes.getClassname()+ "</TD>"
                    + "<TD>" + classes.getGroupClass()+ "</TD>"
                    + "<TD>" + classes.getTeaID() + "</TD>"
                    + "</TR>");
        }
        out.write("</table>");
    %>
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>