<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 07.07.2020
  Time: 4:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="reg">

    <span style="font-size: 28px; color: #6c757d;">Регистрация</span><br>            <br>

    <form:form method="post" modelAttribute="cities" class="login-form">

        <form:textarea type="text" path="name" placeholder="Имя"
                       class="form-control" />

        <form:textarea type="text" path="country" placeholder="Страна"
                       class="form-control" />

        <form:textarea type="text" path="value" placeholder="Value"
                       class="form-control" />

        <button type="submit" class="btn-reg">Регистрация</button>



    </form:form>

</div>
