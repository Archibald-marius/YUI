<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 27.03.2020
  Time: 1:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="jwp"%>

<c:url var="url" value="/messages" />

<c:if test="${empty messageList.content}">
    You have no new messages.
</c:if>

<c:forEach var="message" items="${messageList.content}">

    <c:url var="messageUrl" value="/markread?f=${message.fromUserId}&m=${message.id}" />

    <div class="message-received">

        <fmt:formatDate value="${message.sent}" type="both"/>

        <a href="${messageUrl}">${message.from}</a>

    </div>
    <p/>

</c:forEach>


<jwp:pagination url="${url}" page="${messageList}" size="10" />
