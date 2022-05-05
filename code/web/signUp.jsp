<%@page contentType="text/html" errorPage="error.jsp"  import="model.*" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<!-- start the middle column -->
<section>
    <h1>Parent Sign up </h1>
    <form action="confirmSignUp.jsp" method="POST">
        <label>First Name</label><input type="text" name="parentFname" placeholder="Enter firstname" required/><br>
        <label>Last Name</label><input type="text" name="parentLname" placeholder="Enter lastname"  required/>
        <label>Birthday</label><input type="text" name="parentBirthday" placeholder="Enter yyyy-mm-dd"  required/>
        <label>Identity No</label><input type="text" name="parentNo" placeholder="Enter xxxxxxxxx" pattern="[0-9]{9}" required/><br>
        <label>Phone number</label><input type="text" name="parentTel" placeholder="Enter 0xxx xxxxxx" pattern="0[0-9]{3} [0-9]{6}" required/><br>
        <label>Address</label><input type="text" name="address" placeholder="Enter address" required/><br>
        <label>Email</label><input type="text" name="email" placeholder="Enter Email" required/><br>
        <label>Password</label><input type="password" name="password" required/><br>
        <HR>
        <input type="submit" value="Confirm" />
    </form>
</section>

<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
