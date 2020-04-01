<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="img" value="/img" />


<div class="row">

    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="homepage-status">

            Список пациентов:
<div class="container">
            <c:forEach items="${patientList}" var="patientList">
                <c:url var="patientlink" value="/patientcard/${patientList.id}"/>
                    <div class="pat-list">
                        <img src="${img}/3.png" width="150" height="150" style="float: left; margin: 7px 7px 7px 7px;"/>

                    <%--                        <a href="${patientlink}"><c:out value="${patientList.name}"/></a>--%>
<br>
                    ${patientList.name}
                        <form>
                            <button class="btn-patients" formaction="${patientlink}">Открыть карточку</button>
<%--        <button class="btn-patients" formaction="${patientlink}">Сообщение</button>--%>
    </form>
                    </div>

            </c:forEach>
</div>

<%--                ${patientList[0].name}--%>
<%--                ${patientList[1].name}--%>
<%--                ${patientList[2].name}--%>



        </div>
    </div>

</div>