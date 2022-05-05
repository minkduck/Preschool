<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_admin.jsp" %>
<jsp:useBean class="model.Classes" id="cla" scope="session"/>
<jsp:setProperty name="cla"  property="*"/>
<% if (session.getAttribute("ADMIN") == null) {
        request.getRequestDispatcher("loginAdmin").forward(request, response);
    }
%>
<!-- start the middle column -->

<section>
    <h1> Confirm Class </h1>
    <form action="addClass" method="POST">
        <label>Class Name:</label>${cla.classname}<br>
        <label>Ages :</label>${cla.groupClass}<br>
        <label>Teacher ID :</label>${cla.teaID}<br>
        <HR>
        <input type="submit" value="ADD" />
    </form>
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>

