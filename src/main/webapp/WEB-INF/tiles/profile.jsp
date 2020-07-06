<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url var="img" value="/img" />
<c:url var="editProfileAbout" value="/edit-profile-about" />


<div class="row">

    <div class="col-md-10 col-md-offset-1 col-sm-8 col-sm-offset-2">

<%--        <div class="profile-about">--%>
            <div class="profile-image">
<%--                <img src="${img}/8.png" width="300" height="300"/>--%>
                <img src="${img}/8.png" width="300" height="300" style="float: left; margin: 0px 0px 0px 0px;"/>


<%--                    <c:choose>--%>
<%--                        <c:when test="${profile.about==null}">--%>
<%--                            Click edit to add info--%>

<%--                        </c:when>--%>

<%--                        <c:otherwise>--%>
<%--                            <c:out value="${profile.about==null}"/>--%>
<%--                        </c:otherwise>--%>
<%--                    </c:choose>--%>


                </div>
            <div class="profile-text" style="font-size: 20px;">
                <span style="font-size: 22px;">
                   <c:out value="${profile.firstname}"/>
                <c:out value="${profile.surname}"/>
                </span>
                <br>


                <br>
                <span style="color: lightslategray">
                    Город:
                </span>
<c:if test="${profile.city != ''}">
    <c:out value="${profile.city}"/>
</c:if>
                <c:if test="${profile.city == ''}">
                    не указано
                </c:if>
                <br>

                <c:if test="${bach == 1}">

<span style="color: lightslategray">
 Медицинское учреждение:                </span>
                    <c:if test="${profile.hospital != ''}">
                        <c:out value="${profile.hospital}"/>
                    </c:if>
                    <c:if test="${profile.hospital == ''}">
                        не указано
                    </c:if>
                <br>

                    <span style="color: lightslategray">
                 Специалитет:
               </span>
                <c:if test="${profile.therapy == true}">
                терапия;
                </c:if>
                <c:if test="${profile.surgery == true}">
                    хирургия;
                </c:if>
                <c:if test="${profile.gynecology == true}">
                    гинекология;
                </c:if>
                <c:if test="${profile.cardiology == true}">
                    кардиология;
                </c:if>
                <c:if test="${profile.gastro == true}">
                    гастроэнтерология;
                </c:if>
                <c:if test="${profile.neurology == true}">
                    неврология;
                </c:if>
                <c:if test="${profile.opht == true}">
                    офтальмология;
                </c:if>
                <c:if test="${profile.otolor == true}">
                    отоларингология;
                </c:if>
                <c:if test="${profile.ob == true}">
                    акушерство;
                </c:if>
                <c:if test="${profile.reproductology == true}">
                    репродуктология;
                </c:if>
                <c:if test="${profile.pediatrition == true}">
                    педиатрия;
                </c:if>
                <c:if test="${profile.vascularsurgery == true}">
                    сосудистая хирургия;
                </c:if>
                <c:if test="${profile.plasticsurgery == true}">
                    пластическая хирургия;
                </c:if>
                <c:if test="${profile.alergology == true}">
                    аллергология;
                </c:if>
                <c:if test="${profile.endocrinology == true}">
                    эндокринология;
                </c:if>
                    <c:if test="${profile.urology == true}">
                        урология;
                    </c:if>

                </c:if>
                <c:if test="${bach == 2}">

                    <span style="color: lightslategray">
 Выбраные параметры контроля:               </span>

                    <c:if test="${profile.therapy == true}">
                        артериальное давление;
                    </c:if>
                    <c:if test="${profile.surgery == true}">
                        температура;
                    </c:if>
                    <c:if test="${profile.alergology == true}">
                        уровень глюкозы;
                    </c:if>
                    <c:if test="${profile.cardiology == true}">
                        пульс;
                    </c:if>
                </c:if>

<br>


                <form:form method="post" modelAttribute="profile" class="login-form">
                    <c:if test="${bach == 1}">

                    <c:if test="${profile.published == false}">

                        <c:if test="${ex == true}">
                        <button class="btn-pub" formaction="/publish">Опубликовать профиль</button>
                        </c:if>
                        <c:if test="${ex == false}">
                            <button class="btn-pub" formaction="/suggest">Опубликовать профиль</button>
                        </c:if>
                </c:if>
                <c:if test="${profile.published == true}">
                    <c:if test="${ex == true}">
                        <button class="btn-pub" formaction="/publish">Снять с публикации</button>
                    </c:if>
                    <c:if test="${ex == false}">
                        <button class="btn-pub" formaction="/suggest">Снять с публикации</button>
                    </c:if>                </c:if>
                    <br>
                    <span style="font-size: 12px; color: #343a40;">*Публикация в поиске для пациентов
</span>
                    </c:if>

                </form:form>
                <br>
                <form style="">
                    <button class="btn-pat" style="width: 250px; height: 40px" formaction="${editProfileAbout}">Изменить личные данные</button>
<br>
                </form>
<br>

            </div>
<br>
        </div>
<br>
          </div>




<%--<div class="container">--%>
<%--    <a href="${editProfileAbout}" style="float: left; font-size: 20px;">Редактировать профиль</a>--%>

<%--</div>--%>





