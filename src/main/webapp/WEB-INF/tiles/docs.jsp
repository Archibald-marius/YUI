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

<%--<div class="row">--%>

<%--    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">--%>
<%--        <div class="homepage-status">--%>

<%--            <div class="container">--%>
<%--                <c:forEach items="${doctors}" var="doctors">--%>
<%--&lt;%&ndash;                    <c:url var="patientlink" value="/patientcard/${patientList.id}"/>&ndash;%&gt;--%>
<%--                    <tr>--%>
<%--                        <div class="pat-list">--%>
<%--                            <td style="padding: 20px">--%>
<%--                                    &lt;%&ndash;                        <a href="${patientlink}"><c:out value="${patientList.name}"/></a>&ndash;%&gt;--%>
<%--<div class="container" style="color: #343a40;">--%>
<%--    <img src="${img}/3.gif" width="150" height="150" style="float: left; margin: 7px 7px 7px 7px;"/>--%>
<%--    Врач: ${doctors.value[0]}--%>
<%--    <br>Город: ${doctors.value[1]}--%>
<%--    <br>Мед учреждение: ${doctors.value[2]}--%>
<%--    <br>--%>
<%--    <form>--%>
<%--        <button class="btn-patients" formaction="/getcontact/${doctors.key}">Установить контакт</button>--%>

<%--    </form>--%>

<%--</div>--%>

<%--                                <form>--%>
<%--&lt;%&ndash;                                    <button class="btn-patients" formaction="${patientlink}">Открыть карточку</button>&ndash;%&gt;--%>
<%--                                        &lt;%&ndash;        <button class="btn-patients" formaction="${patientlink}">Сообщение</button>&ndash;%&gt;--%>
<%--                                </form>--%>
<%--                            </td>--%>
<%--                        </div>--%>

<%--                    </tr>--%>
<%--                </c:forEach>--%>
<%--            </div>--%>

<%--            &lt;%&ndash;                ${patientList[0].name}&ndash;%&gt;--%>
<%--            &lt;%&ndash;                ${patientList[1].name}&ndash;%&gt;--%>
<%--            &lt;%&ndash;                ${patientList[2].name}&ndash;%&gt;--%>



<%--        </div>--%>
<%--    </div>--%>

<%--</div>--%>











</div>
<div class="profile-text" style="font-size: 22px;">
    <c:forEach items="${doctors}" var="doctors">
        <%--                    <c:url var="patientlink" value="/patientcard/${patientList.id}"/>--%>
        <tr>
            <div class="pat-list">
                <td style="padding: 20px">
                        <%--                        <a href="${patientlink}"><c:out value="${patientList.name}"/></a>--%>
                    <div class="container" style="color: #343a40;">
                        <img src="${img}/3.gif" width="150" height="150" style="float: left; margin: 7px 7px 7px 7px;"/>
                        <span style="color: #495057">
                            Врач:
                        </span>
                        ${doctors.value[0]}
                        <br>
                        <span style="color: #495057">
                            Город:
                        </span>
                         ${doctors.value[1]}
                        <br>
                        <span style="color: #495057">
                            Мед учреждение:
                        </span>
                        ${doctors.value[2]}
                        <br>
                        <form>
                            <button class="btn-patients" style="color: white;" formaction="/getcontact/${doctors.key}">Установить контакт</button>

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

