<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 21.04.2020
  Time: 5:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url var="editProfileAbout" value="/edit-profile-about" />

<div class="container">

    <form>
        <span style="font-size: 24px;">Заполните профиль для публикации в поиске</span>
        <br>
        <button class="btn-pat" style="width: 200px;" formaction="${editProfileAbout}">Изменить личные данные</button>
    </form>

</div>
