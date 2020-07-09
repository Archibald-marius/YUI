<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 21.04.2020
  Time: 12:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<c:url var="editProfileAbout" value="/edit-profile-about" />

<div class="container">

    <form>
        <span style="font-size: 24px; color: #495057;"><spring:message code="label.notEnoughInfoToReachDoctor" var="notEnoughInfoToReachDoctor"></spring:message>
            ${notEnoughInfoToReachDoctor}</span>
        <br>
        <br>
        <button class="btn-pat" style="width: 200px;" formaction="${editProfileAbout}"><spring:message code="label.profileEdit" var="profileEdit"></spring:message>
            ${profileEdit}</button>
    </form>

</div>
