<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_parent.jsp" %>
<% if (session.getAttribute("PA") == null) {
        request.getRequestDispatcher("loginParent").forward(request, response);
    }
%>
<!-- start the middle column -->

<section>
    <h1> Registration Student </h1>
    <form action="confirmStu.jsp" method="POST">
        <label>First Name</label><input type="text" name="stuFname" placeholder="Enter firstname" required/><br>
        <label>Last Name</label><input type="text" name="stuLname"  placeholder="Enter lastname" required/> <br>
        <label>Birthday</label><input type="text" name="stuBirthday" placeholder="Enter yyyy-mm-dd"  required/><br>
        <label>Gender</label>
        <select name="stuGender">
            <option value="F">Female</option>
            <option value="M">Male</option>
        </select> <br>
        <HR>
        <input type="submit" value="Confirm" />
    </form>
        <font color="red">${error}</font>
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>

