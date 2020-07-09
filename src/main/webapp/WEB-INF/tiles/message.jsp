<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 27.03.2020
  Time: 12:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<div class="row">

    <div
            class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 text-center">

        <div class="message">
                <span style="font-size: 24px;">
                    <spring:message code="label.regSuccess1" var="regSuccess1"></spring:message>
                    ${regSuccess1}<br>
                    <spring:message code="label.regSuccess2" var="regSuccess2"></spring:message>
                ${regSuccess2}
<%--                                <c:out value="${message}" />--%>
                </span>
        </div>

    </div>

</div>
