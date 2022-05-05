<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<!-- start the middle column -->

<section>
    <h1>Parent Login!</h1>
    <form action="loginParent" method="POST">
        <label>Username:</label><input type="text" name="userParent" required /><br>
        <label>Password:</label><input type="password" name="passParent" required /><br>
        <HR>
        <input type="submit" value="Login" /><br><br>
    </form>
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>

