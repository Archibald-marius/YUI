<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 25.06.2020
  Time: 1:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:if test="${g_blood == 1}">
    <c:url var="conclusion" value="/conclusion" />
    <div class="login">


        <form action="${conclusion}" method="POST">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}" />

            <input class="form-control" name="erythr" placeholder="Er">
            <input class="form-control" name="leu" placeholder="Leu">
            <input class="form-control" name="tromb" placeholder="tromb">
            <input class="form-control" name="reticulocytes" placeholder="tromb">


            <br>


            <br>
            <button id="search-button" class="btn btn-primary" style="width: 250px; background-color: cadetblue; font-size: 14px;" type="submit">
                Старт
            </button>

            </span>


        </form>
    </div>
</c:if>



