<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<div class="row">
    <div class="col-md-12 results-none">
        <c:if test="${empty result}">
            <span style="font-size: 22px; color: #495057;"><spring:message code="label.noPatientFounded" var="noPatientFounded"></spring:message>
                    ${noPatientFounded}</span>
        </c:if>
    </div>
</div>

<c:forEach var="result" items="${result}">
    <c:url var="patientlink" value="/patientcard/${result.userId}"/>
    <div class="container">

    <div class="pat-list">
    <br>

<%--        photo here--%>
        <div class="reuslt-details">
            <span style="font-size: 22px; color: #212529">
                <a href="${patientlink}" style="color: #343a40;"><c:out value="${result.name}"/></a>
            </span>
            <br>
            <form>
            <button class="btn-patients" style="font-size: 14px; width: 100px; height: 30px;"  formaction="${patientlink}">Открыть карточку</button>
            </form>
<%--            <c:out value="${result.weeks}"/>--%>
        </div>
    </div>
    </div>
</c:forEach>





