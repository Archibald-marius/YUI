<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 01.04.2020
  Time: 12:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>



<div class="reg">

    <span style="font-size: 24px; color: #6c757d;"><spring:message code="label.params" var="params"></spring:message>
                ${params} ${control.normal_date}</span><br>
<br>
    <form:form modelAttribute="control">



        <c:if test="${ap == true}">
            <span style="color: #495057; float: left; font-size: 20px;"><spring:message code="label.press" var="press"></spring:message>
                    ${press}</span>
            <div class="input-group" style="display: flex; flex-direction: row; width: 270px">
                <form:input name="SAT" path="SAT" placeholder=""
                            class="form-control"/>
                <span style="font-size: 26px; color: #495057;"> / </span>
                <form:input name="DAT" path="DAT" placeholder=""
                            class="form-control" />
            </div>
        </c:if>

        <c:if test="${pls == true}">

            <span style="color: #495057; float: left; font-size: 20px;"><spring:message code="label.pls" var="pls"></spring:message>
                    ${pls}</span>
            <div class="input-group" style="width: 150px;">
                <form:input name="pulse" path="pulse" placeholder=""
                            class="form-control" />
                <br>
            </div>
        </c:if>
        <br>

        <c:if test="${tmp == true}">

            <span style="color: #495057; float: left; font-size: 20px;"><spring:message code="label.temperat" var="temperat"></spring:message>
                    ${temperat}<br><span style="font-size: 14px">*в формате 36.6</span></span>
            <br>

            <div class="input-group" style="width: 150px">
                <form:input name="temperature" path="temperature" placeholder=""
                            class="form-control" />
                <br>
                <br>

            </div>
        </c:if>

        <c:if test="${glu == true}">

            <span style="color: #495057; float: left; font-size: 20px;"><spring:message code="label.gluc" var="gluc"></spring:message>
                    ${gluc}</span>
            <br>
            <div class="input-group" style="width: 150px;">
                <form:input name="glucose" path="glucose" placeholder=""
                            class="form-control" />
                <br>


            </div>

        </c:if>

        <div class="input-group">
            <button type="submit" class="btn-control" style="color: white;"><spring:message code="label.paramsButton" var="paramsButton"></spring:message>
                    ${paramsButton}</button>
        </div>

    </form:form>

</div>
