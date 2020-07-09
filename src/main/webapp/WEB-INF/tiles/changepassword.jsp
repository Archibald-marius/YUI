<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 23.06.2020
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<c:url var="newpass" value="/newpass" />
<div class="login">


<form action="${newpass}" method="POST">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}" />

    <input type="hidden" name="str"
           value="${str}" />
    <input type="hidden" name="bigdata"
           value="${bigdata}" />

    <input type="password" class="form-control" name="password" placeholder="Новый пароль">
    <br>
    <button id="search-button" class="btn btn-primary" style="width: 250px; background-color: cadetblue; font-size: 14px;" type="submit">
        <spring:message code="label.changePassword" var="changePassword"></spring:message>
        ${changePassword}    </button>

    </span>


</form>
</div>