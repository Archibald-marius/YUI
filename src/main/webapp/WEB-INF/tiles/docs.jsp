<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 31.03.2020
  Time: 5:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="img" value="/img" />

<div class="row">

    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="homepage-status">

            Список пациентов:
            <div class="container">
                <c:forEach items="${doctors}" var="doctors">
<%--                    <c:url var="patientlink" value="/patientcard/${patientList.id}"/>--%>
                    <tr>
                        <div class="pat-list">
                            <td style="padding: 20px">
                                    <%--                        <a href="${patientlink}"><c:out value="${patientList.name}"/></a>--%>
<div class="container">
    <img src="${img}/3.gif" width="150" height="150" style="float: left; margin: 7px 7px 7px 7px;"/>
    <br>Врач ${doctors.value[0]}
    <br>
    <form>
        <button class="btn-on-docs" formaction="/getcontact/${doctors.key}">Установить контакт</button>

    </form>

</div>

                                <form>
<%--                                    <button class="btn-patients" formaction="${patientlink}">Открыть карточку</button>--%>
                                        <%--        <button class="btn-patients" formaction="${patientlink}">Сообщение</button>--%>
                                </form>
                            </td>
                        </div>

                    </tr>
                </c:forEach>
            </div>

            <%--                ${patientList[0].name}--%>
            <%--                ${patientList[1].name}--%>
            <%--                ${patientList[2].name}--%>



        </div>
    </div>

</div>
