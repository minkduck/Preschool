<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_admin.jsp" %>
<% if (session.getAttribute("ADMIN") == null) {
        request.getRequestDispatcher("loginAdmin").forward(request, response);
    }
%>
<!-- start the middle column -->

<section>
    <h1> Add Teacher </h1>
    <form action="confirmTea.jsp" method="POST">
        <label>First Name</label><input type="text" name="teaFname" placeholder="Enter firstname" required/><br>
        <label>Last Name</label><input type="text" name="teaLname"  placeholder="Enter lastname" required/>
        <label>Birthday</label><input type="text" name="teaBirthday" placeholder="Enter yyyy-mm-dd"  required/>
        <label>Identity No</label><input type="text" name="teaNo" placeholder="Enter xxxxxxxxx" pattern="[0-9]{9}" required/><br>
        <label>Address</label><input type="text" name="address" placeholder="Enter address" required/><br>
        <label>Phone number</label><input type="text" name="teaTel" placeholder="Enter 0xxx xxxxxx" pattern="0[0-9]{3} [0-9]{6}" required/><br>
        <label>Email</label><input type="text" name="email" placeholder="Enter Email" required/><br>
        <label>Gender</label>
        <select name="gender">
            <option value="F">Female</option>
            <option value="M">Male</option>
        </select> <br>
        <label>Degree(optional)</label><input type="text" name="degree" placeholder="Enter degree" /><br>
        <HR>
        <input type="submit" value="Confirm" />
    </form>
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>

