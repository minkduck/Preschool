<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_admin.jsp" %>
<% if (session.getAttribute("ADMIN") == null) {
        request.getRequestDispatcher("loginAdmin").forward(request, response);
    }
%>
<!-- start the middle column -->

<section>
    <h1> Administrator Success !!!</h1>
    
    <p>Thanks for visiting. Make yourself at home. We 
    hope you like it as much as we do.</p>
    <p>${MSG}</p>
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>

