<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 07.07.2020
  Time: 1:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach items="${cities}" var="cities">
    <c:url var="cityLink" value="/editcity/${cities.id}"/>

    <div class="container">

        <div class="pat-list">
            <br>


                <%--
                                    <a href="${patientlink}"><c:out value="${patientList.name}"/></a>--%>
                ${cities.id}

        ${cities.name}
                ${cities.country}
                ${cities.ru}

            <form>
                <button class="btn-patients" formaction="${cityLink}">Открыть</button>
                    <%--        <button class="btn-patients" formaction="${patientlink}">Сообщение</button>--%>
            </form>

        <%--            <form>--%>
<%--                <button class="btn-patients" formaction="${patientlink}">Открыть карточку</button>--%>
<%--                    &lt;%&ndash;        <button class="btn-patients" formaction="${patientlink}">Сообщение</button>&ndash;%&gt;--%>
<%--            </form>--%>
            <br>
        </div>

    </div>


</c:forEach>
<c:forEach items="${countries}" var="countries">
    <c:url var="countryLink" value="/editcountry/${countries.id}"/>

    <div class="container">

        <div class="pat-list">
            <br>


                <%--                        <a href="${patientlink}"><c:out value="${patientList.name}"/></a>--%>
                ${countries.name}
                            <form>
                                <button class="btn-patients" formaction="${countryLink}">Открыть</button>
                                    <%--        <button class="btn-patients" formaction="${patientlink}">Сообщение</button>--%>
                            </form>
            <br>
        </div>

    </div>


</c:forEach>