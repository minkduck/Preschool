<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_admin.jsp" %>
<% if (session.getAttribute("ADMIN") == null) {
        request.getRequestDispatcher("loginAdmin").forward(request, response);
    }
%>
<!-- start the middle column -->

<section>
    <h1>Add Class!</h1>
    <form action="confirmClass.jsp" method="POST">
        <label>Class Name:</label><input type="text" name="classname" required /><br>
        <label>Ages :</label>
        <select name="groupClass">
            <option value="12-18 tháng">12-18 tháng</option>
            <option value="19-24 tháng">19-24 tháng</option>
            <option value="25-36 tháng">25-36 tháng</option>
            <option value="3-4 tuổi">3-4 tuổi</option>
            <option value="4-5 tuổi">4-5 tuổi</option>
            <option value="5-6 tuổi">5-6 tuổi</option>
        </select> <br>
        <label>Teacher ID :</label><input type="text" name="teaID" required /><br>
        <HR>
        <input type="submit" value="Confirm" /><br><br>
    </form>
    <font color="red">${err}</font>
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
