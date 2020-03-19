<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">

    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="homepage-status">

            Td do

            <c:forEach items="${patientList}" var="patientList">
                <tr>
                    <td>${patientList.name}</td>
                </tr>
            </c:forEach>

<%--                ${patientList[0].name}--%>
<%--                ${patientList[1].name}--%>
<%--                ${patientList[2].name}--%>



        </div>
    </div>

</div>