<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:url var="url" value="/viewstatus"/>

<div class = "pagination">
    <c:forEach var="pageNumber" begin="1" end="${page.totalPages}">

        <c:choose>
            <c:when test="${page.number != pageNumber - 1}">
                <a href="${url}?p=${pageNumber}"><c:out value="${pageNumber}" /></a>

            </c:when>
            <c:otherwise>
                <strong><c:out value="${pageNumber}" /></strong>
            </c:otherwise>
        </c:choose>

        <c:if test="${pageNumber != page.totalPages}"/>
        |
    </c:forEach>
</div>
<c:forEach var="statusUpdate" items="${page.content}">

    <c:url var="editLink" value="/editstatus?id=${statusUpdate.id}"/>
    <c:url var="deleteLink" value="/deletestatus?id=${statusUpdate.id}"/>


    <div class="panel panel-default">

        <div class="panel-heading">
            <div class="panel-title">Status uptaded<fmt:formatDate pattern="EEE d MMM y 'at' h:m:s" value="${statusUpdate.added}"/></div>
        </div>

        <div class="panel-body">
            <div>${statusUpdate.text}</div>
            <div class="edit-links">
                <a href="${editLink}">edit</a>|
                <a onclick="return confirm('really delete?')" href="${deleteLink}">delete</a>


            </div>

        </div>


    </div>


    </c:forEach>

