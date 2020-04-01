<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 28.03.2020
  Time: 5:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<form:form modelAttribute="users">
    <div class="form-group">
        Диагноз
        <form:checkbox path="therapy" rows="10" cols="50"></form:checkbox>
        <form:checkbox path="gynecology" rows="10" cols="50"></form:checkbox>
        <form:checkbox path="surgery" rows="10" cols="50"></form:checkbox>

    </div>

</form:form>

