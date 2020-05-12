<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 29.03.2020
  Time: 2:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:forEach var="dialogs" items="${dialogs}">
    <c:url var="dialog" value="/chatview/${dialogs.key}"/>
    <c:url var="blacklist" value="/blacklist/${dialogs.key}"/>


    <%--    <c:url var="patientlink" value="/patientcard/${result.userId}"/>--%>
    <div class="row">
        <div class="col-md-12">
                <%--        photo here--%>
            <div class="reuslt-details">
<%--                <a href="${patientlink}"><c:out value="${result.name}"/></a>--%>
                <div style="font-size: 24px">    <c:out value="${dialogs.value[0]}"/>
                </div>
    <div style="font-size: 14px">
        <c:out value="${dialogs.value[1]}"/>

    </div>
    <form>
        <button class="btn-dialog" formaction="${dialog}" style="opacity: 0.8; width: 320px;"><c:out value="${dialogs.value[2]}"/></button>
        <br>
        <button class="btn-block" formaction="${blacklist}" style="opacity: 0.6">Заблокировать</button>

    </form>


            </div>
        </div>
    </div>
</c:forEach>
