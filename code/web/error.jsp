<%@page contentType="text/html" isErrorPage="true" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/column_left_home.jsp" %>

<!-- start the middle column -->

<section>
    <h1>Error Page - Preschool Management System</h1>
    ${pageContext.exception.message}
</section>


<!-- end the middle column -->

<%@ include file="/includes/column_right_news.jsp" %>
<%@ include file="/includes/footer.jsp" %>
