<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 16.04.2020
  Time: 12:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<c:url var="editProfileAbout" value="/edit-profile-about" />

<div class="container">

    <form>
        <span style="font-size: 24px; color: #343a40"><spring:message code="label.notEnoughInfoForDoc" var="notEnoughInfoForDoc"></spring:message>
            ${notEnoughInfoForDoc}</span>
        <br>
<br>
        <button class="btn-pat" style="width: 200px;" formaction="${editProfileAbout}"><spring:message code="label.profileEdit" var="profileEdit"></spring:message>
            ${profileEdit}</button>
    </form>

</div>


<%--<div class="container">--%>
<%--        <a href="${editProfileAbout}" style="float: left; font-size: 24px;">Заполнить профиль</a>--%>

<%--    </div>--%>

