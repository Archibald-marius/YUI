<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url var="img" value="/img" />
<c:url var="editProfileAbout" value="/edit-profile-about" />


<div class="row">

    <div class="col-md-10 col-md-offset-1 col-sm-8 col-sm-offset-2">

        <div class="profile-about">
            <div class="profile-image">
                <img src="${img}/8.png" width="300" height="300"/>


<%--                    <c:choose>--%>
<%--                        <c:when test="${profile.about==null}">--%>
<%--                            Click edit to add info--%>

<%--                        </c:when>--%>

<%--                        <c:otherwise>--%>
<%--                            <c:out value="${profile.about==null}"/>--%>
<%--                        </c:otherwise>--%>
<%--                    </c:choose>--%>


                </div>
            <div class="profile-text">
                <br>
                <c:out value="${profile.firstname}"/>
                <c:out value="${profile.surname}"/>

                <br>
                Город:<c:out value="${profile.city}"/>
                <br>
                Медицинское учреждение:<c:out value="${profile.hospital}"/>
                <br>
                Специалитет:
                <c:if test="${profile.therapy == true}">
                терапия;
                </c:if>
                <c:if test="${profile.surgery == true}">
                    хирургия;
                </c:if>



                <form:form method="post" modelAttribute="profile" class="login-form">
<br>
                <c:if test="${profile.published == false}">
                    <button class="btn-pat" formaction="/publish">Опубликовать профиль</button>

                </c:if>
                <c:if test="${profile.published == true}">
                    <button class="btn-pat" formaction="/publish">Снять с публикации профиль</button>
                </c:if>
                    <br>
                    <span style="font-size: 12px;">Публикация в поиске для пациентов
</span>

                </form:form>


            </div>

        </div>

<br>
    </div>

<div class="container">
    <a href="${editProfileAbout}" style="float: left;">Редактировать профиль</a>

</div>





