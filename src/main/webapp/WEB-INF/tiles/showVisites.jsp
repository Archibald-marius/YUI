<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 24.03.2020
  Time: 1:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<div class="row">

    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="homepage-status" style="color: #6c757d;">

            <spring:message code="label.patientConsultations" var="patientConsultations"></spring:message>
            ${patientConsultations}
            <div class="container">
                <c:forEach items="${yavka}" var="yavka">
<%--                    <c:url var="patientlink" value="/patientcard/${patientList.id}"/>--%>
                    <tr>
                        <div class="pat-list">
                            <td>
                                    <%--                        <a href="${patientlink}"><c:out value="${patientList.name}"/></a>--%>
                                        <c:url var="editvisit" value="/editvisit/${yavka.id}"/>

                                    ${yavka.normal_date}
                                        <form>
                                            <button class="btn-pat" formaction="${editvisit}">Смотреть визит</button>
                                        </form>

                                    <%--                                <form>--%>
<%--                                    <button class="btn-pat" formaction="${patientlink}">Открыть карточку</button>--%>
<%--                                </form>--%>
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
