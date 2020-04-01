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

<c:choose>
    <c:when test="${publish==false}">
        Профиль не опубликовано
    </c:when>
    <c:otherwise>
        Профиль опубликовано
    </c:otherwise>
</c:choose>
