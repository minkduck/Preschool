<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_parent.jsp" %>
<% if (session.getAttribute("PA") == null) {
        request.getRequestDispatcher("loginParent").forward(request, response);
    }
%>
<!-- start the middle column -->

<section>
    <h1> Parent Login Success !!!</h1>
    
    <p>Thanks for visiting. Make yourself at home. We 
    hope you like it as much as we do.</p>
    <p>${PARENT}</p>
    <p>${STUDENT}</p>
    <p>${PAY}</p>
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>

