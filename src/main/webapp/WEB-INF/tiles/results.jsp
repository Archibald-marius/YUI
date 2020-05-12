<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">
    <div class="col-md-12 results-none">
        <c:if test="${empty result}">
            <span style="font-size: 20px;">Никого не найдено</span>
        </c:if>
    </div>
</div>

<c:forEach var="result" items="${result}">
    <c:url var="patientlink" value="/patientcard/${result.userId}"/>
    <div class="row">
    <div class="col-md-12">
<%--        photo here--%>
        <div class="reuslt-details">
            <a href="${patientlink}"><c:out value="${result.name}"/></a>
            <c:out value="${result.weeks}"/>
        </div>
    </div>
    </div>
</c:forEach>



