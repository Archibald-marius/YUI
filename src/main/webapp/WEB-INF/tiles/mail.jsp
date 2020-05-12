<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 20.04.2020
  Time: 5:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${dialogs}" var="dialogs">
    <span style="font-size: 16px;">
               <span style="color: #6c757d;">
                  ${dialogs.value[0]}<br>
                          ${dialogs.value[3]}<br>

               </span>
        ${dialogs.value[1]}
    <br>
        <br>
    </span>


</c:forEach>