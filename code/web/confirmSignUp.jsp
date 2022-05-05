<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>
<jsp:useBean class="model.Parent" id="pa" scope="session"/>
<jsp:setProperty name="pa"  property="*"/>

<!-- start the middle column -->

<section>
    <h1> Confirm Sign Up </h1>
    <form action="signUp" method="POST">
        <label>First Name</label>${pa.parentFname}<br>
        <label>Last Name</label>${pa.parentLname}<br>
        <label>Birthday</label>${pa.parentBirthday}<br>
        <label>Identity No</label>${pa.parentNo}<br>
        <label>Address</label>${pa.address}<br>
        <label>Phone number</label>${pa.parentTel}<br>
        <label>Email</label>${pa.email}<br>
        <label>Password</label>${pa.password}<br>
        <HR>
        <input type="submit" value="Sign Up" />
    </form>
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>

