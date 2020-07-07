<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 07.07.2020
  Time: 3:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="reg">

    <span style="font-size: 28px; color: #6c757d;">Изменить</span><br>            <br>

    <form:form method="post" modelAttribute="countries" class="login-form">

        <form:input type="text" path="name" placeholder="Имя"
                    class="form-control" />


        <button type="submit" class="btn-reg">Изменить</button>



    </form:form>

</div>
