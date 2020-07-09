<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 23.06.2020
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="container" style="font-size: 24px; color: #6c757d;">
    <br>
    <spring:message code="label.newPass" var="newPass"></spring:message>
    ${newPass}
</div>