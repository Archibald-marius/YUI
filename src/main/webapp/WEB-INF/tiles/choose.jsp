<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 22.03.2020
  Time: 1:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class=container">
    <div class="btn-on-choose">
       <div class="container">
        <form>
            <button class="btn-on" formaction="/register/doctor"><spring:message code="label.chooseDoctor" var="chooseDoctor"></spring:message>
                ${chooseDoctor}</button>
            <button class="btn-on" formaction="/register/patient"><spring:message code="label.choosePatient" var="choosePatient"></spring:message>
                ${choosePatient}</button>

        </form>
       </div>

    </div>

</div>


