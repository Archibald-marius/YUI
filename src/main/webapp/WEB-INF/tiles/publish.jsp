<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 29.03.2020
  Time: 1:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<c:choose>
    <c:when test="${publish==false}">
        <div class="container">
        <span style="font-size: 24px; color: #495057">
            <br>
            <br>
            <spring:message code="label.unpublishSuccess" var="unpublishSuccess"></spring:message>
                ${unpublishSuccess}<br>
        </span>
        </div>
    </c:when>
    <c:otherwise>
        <div class="container">
        <span style="font-size: 24px; color: #495057">
            <br>
            <br>
            <spring:message code="label.publishSuccess1" var="publishSuccess1"></spring:message>
                ${publishSuccess1}<br>
            <spring:message code="label.publishSuccess2" var="publishSuccess2"></spring:message>
                ${publishSuccess2}
        </span>
        </div>    </c:otherwise>
</c:choose>
