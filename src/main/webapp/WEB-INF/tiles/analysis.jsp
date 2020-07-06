<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 25.06.2020
  Time: 12:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url var="check" value="/check" />
<div class="login">


    <form action="${check}" method="POST">
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />

<%--        <input type='hidden' value='jjvhv' name='g_blood'>--%>
<%--        <input type="checkbox" name="g_blood" value='ooo'/> ОАК--%>
        <input type="hidden" name="g_blood" value="0"><input type="checkbox" onclick="this.previousSibling.value=1-this.previousSibling.value">ОАК
        <input type="hidden" name="b_blood" value="0"><input type="checkbox" onclick="this.previousSibling.value=1-this.previousSibling.value">Б/х
        <input type="hidden" name="ur" value="0"><input type="checkbox" onclick="this.previousSibling.value=1-this.previousSibling.value">ОАМ

    <%--        <input type="checkbox" name="b_blood" value="true"/> Б/х--%>
<%--        <input type="checkbox" name="ur" value="true"/> ОАМ--%>


        <br>
        <button id="search-button" class="btn btn-primary" style="width: 250px; background-color: cadetblue; font-size: 14px;" type="submit">
            Старт
        </button>

        </span>


    </form>
</div>
