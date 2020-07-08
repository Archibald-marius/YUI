<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 23.06.2020
  Time: 10:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<c:url var="forgotpassword" value="/reset" />

<div class="login">

<form action="${forgotpassword}" method="POST">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}" />

    <input type="text" class="form-control" name="email" placeholder="Email">
    <br>
    <button id="search-button" class="btn btn-primary" style="width: 300px; background-color: cadetblue; font-size: 14px;" type="submit">
        <spring:message code="label.passwordRecovery" var="passwordRecovery"></spring:message>
        ${passwordRecovery}
    </button>

    </span>


</form>
</div>
