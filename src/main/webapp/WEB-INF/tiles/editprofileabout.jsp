<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="row">

<%--    <div class="col-md-8 col-md-offset-2">--%>


        <div class="panel panel-default">

            <div class="panel-heading">
                <div class="panel-title" style="color: white;">Редактировать личную информацию</div>
            </div>

            <div class="panel-body">

                <form:form modelAttribute="profile">

<%--                    <fieldset class="boxBody">--%>
<%--                        <label>Username</label>--%>
<%--                        <form:input path="firstname"/>--%>
<%--                        <form:input path="city"/>--%>






                        <form:input type="text" path="firstname" placeholder="Имя"
                                    class="form-control" />
                        <span class="input-group-btn" style="width:20px"></span>
                        <br>
                        <form:input type="text" path="surname" placeholder="Фамилия"
                                    class="form-control" />
                        <br>
                        <form:input type="city" path="city" placeholder="Ваш город"
                                    class="form-control" />
                        <br>
                    <form:input type="city" path="hospital" placeholder="Лечебное учреждение"
                                class="form-control" />
                    <br>

                     Выберете Вашу профессиональную сферу (одну или несколько)
                            <table class="regist">

                                <tr style="text-align: left">
                                    <th>
                                        <form:checkbox path="ob" value="true"/> Акушерство и гинекология
                                    </th>


                                    <th>
                                        <form:checkbox path="pediatrition" value="true"/> Педиатрия
                                    </th>

                                </tr>

                                <tr style="text-align: left">
                                    <th>
                                        <form:checkbox path="therapy" value="true"/> Терапия
                                    </th>


                                    <th>
                                        <form:checkbox path="cardiology" value="true"/> Кардиология
                                    </th>

                                </tr>

                                <tr style="text-align: left">
                                    <th>
                                        <form:checkbox path="gastro" value="true"/> Гастроентерология
                                    </th>


                                    <th>
                                        <form:checkbox path="otolor" value="true"/> Отоларингология
                                    </th>

                                </tr>

                                <tr style="text-align: left">
                                    <th>
                                        <form:checkbox path="endocrinology" value="true"/> Ендокринология

                                    </th>


                                    <th>
                                        <form:checkbox path="alergology" value="true"/> Аллергология

                                    </th>

                                </tr>


                                <tr style="text-align: left">
                                    <th>
                                        <form:checkbox path="neurology" value="true"/> Неврология
                                    </th>


                                    <th>
                                        <form:checkbox path="opht" value="true"/> Офтальмология
                                    </th>

                                </tr>


                                <tr style="text-align: left">
                                    <th>
                                        <form:checkbox path="surgery" value="true"/> Общая хирургия

                                    </th>


                                    <th>
                                        <form:checkbox path="orthopedy" value="true"/> Ортопедия
                                    </th>


                                </tr>

                                <tr style="text-align: left">
                                    <th>
                                        <form:checkbox path="vascularsurgery" value="true"/> Сосудистая хирургия

                                    </th>


                                    <th>
                                        <form:checkbox path="plasticsurgery" value="true"/> Пластическая хирургия

                                    </th>

                                </tr>
                                <tr>


                                </tr>
                            </table>
                            <br>
                    <div class="container">
                        <button type="submit" class="btn-reg">Изменить</button>
                    </div>


                        <form:input type="hidden" name="role" path="role" value="${role}"
                                    class="form-control" />

<%--                        <label>Username</label>--%>
<%--                        <form:input path="surname"/>--%>


<%--                    <footer>--%>
<%--                            <c:if test="${profile.therapy == false}">--%>
<%--                                <form:checkbox path="therapy" value="true"/>--%>
<%--                            </c:if>--%>
<%--                        <c:if test="${profile.therapy == true}">--%>
<%--                                <form:checkbox path="therapy" value="true" checked="checked"/>--%>
<%--                            </c:if>--%>
<%--                        <label>Терапия?</label>--%>

<%--                        <c:choose>--%>
<%--                            <c:when test="${profile.surgery == false}">--%>
<%--                                <form:checkbox path="surgery" value="true"/>--%>
<%--                            </c:when>--%>
<%--                            <c:otherwise>--%>
<%--                                <form:checkbox path="surgery" value="true" checked="checked"/>--%>
<%--                            </c:otherwise>--%>
<%--                        </c:choose>--%>
<%--                        <label>Хирургия?</label>--%>

<%--                        <c:choose>--%>
<%--                            <c:when test="${profile.gynecology = true}">--%>
<%--                                <form:checkbox path="gynecology" value="true"/>--%>
<%--                            </c:when>--%>
<%--                            <c:otherwise>--%>
<%--                                <form:checkbox path="gynecology" value="true" checked="checked"/>--%>
<%--                            </c:otherwise>--%>
<%--                        </c:choose>--%>
<%--                        <label>Гинекология?</label>--%>



<%--                        <br>--%>
<%--                        <input type="submit" class="btnLogin" value="Login" tabindex="4">--%>
<%--                    </footer>--%>
                </form:form>

            </div>


        </div>



    </div>



</div>

