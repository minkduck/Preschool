<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_parent.jsp" %>
<jsp:useBean class="model.Student" id="stu" scope="session"/>
<jsp:setProperty name="stu"  property="*"/>
<% if (session.getAttribute("PA") == null) {
        request.getRequestDispatcher("loginParent").forward(request, response);
    }
%>

<!-- start the middle column -->

<section>
    <h1> Confirm Student </h1>
    <form action="registration" method="POST">
        <label>First Name</label>${stu.stuFname}<br>
        <label>Last Name</label>${stu.stuLname}<br>
        <label>Birthday</label>${stu.stuBirthday}<br>
        <label>Gender</label>${stu.stuGender}<br>
        <HR>
        <input type="submit" value="ADD" />
    </form>
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>

