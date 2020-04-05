<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 01.04.2020
  Time: 12:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class=container">
    <div class="btn-on-choose">
        <div class="container">
            <form>
                <table>
                    <tr><td><span style="font-size: 34px; color: #495057;">Выбор показателей</span></td></tr>

                    <tr>
                        <td>
<c:if test="${set[0] == false}">
<button class="btn-on" formaction="/ind/pressure">Артериальное давление</button>
</c:if>
                            <c:if test="${set[0] == true}">
                                <button class="btn-on" formaction="/ind/pressure" disabled>Артериальное давление</button>
                            </c:if>
                        </td>
                        <td>
<c:if test="${set[1] == false}">
<button class="btn-on" formaction="/ind/pulse">Пульс</button>
</c:if>

                            <c:if test="${set[1] == true}">
                                <button class="btn-on" formaction="/ind/pulse" disabled>Пульс</button>
                            </c:if>

                        </td>

                    </tr>

                    <tr>
                        <td>
<c:if test="${set[2] == false}">

<button class="btn-on" formaction="/ind/temperature">Температура</button>
</c:if>

                            <c:if test="${set[2] == true}">

                                <button class="btn-on" formaction="/ind/temperature" disabled>Температура</button>
                            </c:if>

                        </td>
                        <td>
    <c:if test="${set[3] == false}">

    <button class="btn-on" formaction="/ind/glucose">Глюкоза</button>
    </c:if>

                            <c:if test="${set[3] == true}">

                                <button class="btn-on" formaction="/ind/glucose" disabled>Глюкоза</button>
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
