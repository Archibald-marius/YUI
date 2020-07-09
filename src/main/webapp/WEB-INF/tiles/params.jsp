<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 01.04.2020
  Time: 12:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>




<div class=container">
    <div class="btn-on-choose">
        <div class="container">
            <form>
                <table>
                    <tr><td><span style="font-size: 34px; color: #495057;"><spring:message code="label.chooseParams" var="chooseParams"></spring:message>
                        ${chooseParams}</span></td></tr>

                    <tr>
                        <td>
<c:if test="${set[0] == false}">
<button class="btn-on" formaction="/ind/pressure"><spring:message code="label.press" var="press"></spring:message>
        ${press}</button>
</c:if>
                            <c:if test="${set[0] == true}">
                                <button class="btn-on" formaction="/ind/pressure" disabled><spring:message code="label.press" var="press"></spring:message>
                                        ${press}</button>
                            </c:if>
                        </td>
                        <td>
<c:if test="${set[1] == false}">
<button class="btn-on" formaction="/ind/pulse"><spring:message code="label.pls" var="pls"></spring:message>
        ${pls}</button>
</c:if>

                            <c:if test="${set[1] == true}">
                                <button class="btn-on" formaction="/ind/pulse" disabled><spring:message code="label.pls" var="pls"></spring:message>
                                        ${pls}</button>
                            </c:if>

                        </td>

                    </tr>

                    <tr>
                        <td>
<c:if test="${set[2] == false}">

<button class="btn-on" formaction="/ind/temperature"><spring:message code="label.temperat" var="temperat"></spring:message>
        ${temperat}</button>
</c:if>

                            <c:if test="${set[2] == true}">

                                <button class="btn-on" formaction="/ind/temperature" disabled><spring:message code="label.temperat" var="temperat"></spring:message>
                                        ${temperat}</button>
                            </c:if>

                        </td>
                        <td>
    <c:if test="${set[3] == false}">

    <button class="btn-on" formaction="/ind/glucose"><spring:message code="label.gluc" var="gluc"></spring:message>
            ${gluc}</button>
    </c:if>

                            <c:if test="${set[3] == true}">

                                <button class="btn-on" formaction="/ind/glucose" disabled><spring:message code="label.gluc" var="gluc"></spring:message>
                                        ${gluc}</button>
                            </c:if>

                        </td>

                    </tr>

<%--<tr><td>Акушерская панель</td></tr>--%>

<%--                    <tr>--%>
<%--                        <td>--%>
<%--        <c:if test="${set[4] == false}">--%>

<%--        <button class="btn-on" formaction="/ind/baby">Тесты движения плода</button>--%>
<%--        </c:if>--%>

<%--                        </td>--%>

<%--                    </tr>--%>

                </table>


            </form>
        </div>

    </div>

</div>
