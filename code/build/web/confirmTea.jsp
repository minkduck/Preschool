<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_admin.jsp" %>
<jsp:useBean class="model.Teacher" id="tea" scope="session"/>
<jsp:setProperty name="tea"  property="*"/>
<% if (session.getAttribute("ADMIN") == null) {
        request.getRequestDispatcher("loginAdmin").forward(request, response);
    }
%>
<!-- start the middle column -->

<section>
    <h1> Confirm Teacher </h1>
    <form action="addTeacher" method="POST">
        <label>First Name</label>${tea.teaFname}<br>
        <label>Last Name</label>${tea.teaLname}<br>
        <label>Birthday</label>${tea.teaBirthday}<br>
        <label>Identity No</label>${tea.teaNo}<br>
        <label>Address</label>${tea.address}<br>
        <label>Phone number</label>${tea.teaTel}<br>
        <label>Email</label>${tea.email}<br>
        <label>Gender</label>${tea.gender}<br>
        <label>Degree(optional)</label>${tea.degree}<br>
        <HR>
        <input type="submit" value="ADD" />
    </form>
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>

