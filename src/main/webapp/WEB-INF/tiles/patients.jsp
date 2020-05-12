<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="img" value="/img" />


<div class="row">

    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <c:if test="${empty patientList}">
            <span style="font-size: 22px; color: #495057;">Список пациентов пока пуст</span>
        </c:if>
<c:if test="${!empty patientList}">


        <div class="homepage-status">

            <span style="color: #495057">Список пациентов:</span>
            <br>


            <div class="container">
            <c:forEach items="${patientList}" var="patientList">
                <c:url var="patientlink" value="/patientcard/${patientList.id}"/>
                <div class="container">

                    <div class="pat-list">
                        <br>

                        <img src="${img}/7.png" width="100" height="100" style="float: left; margin: 7px 7px 7px 7px;"/>

                            <%--                        <a href="${patientlink}"><c:out value="${patientList.name}"/></a>--%>
                            ${patientList.name}
                        <form>
                            <button class="btn-patients" formaction="${patientlink}">Открыть карточку</button>
                                <%--        <button class="btn-patients" formaction="${patientlink}">Сообщение</button>--%>
                        </form>
                        <br>
                    </div>

                </div>


            </c:forEach>
</div>

<%--                ${patientList[0].name}--%>
<%--                ${patientList[1].name}--%>
<%--                ${patientList[2].name}--%>



        </div>
    </div>

</div>
</c:if>
