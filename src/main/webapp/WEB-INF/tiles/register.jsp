<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url var="loginUrl" value="/login" />


    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">



<%--        <div class="panel panel-default">--%>

<%--            <div class="panel-heading">--%>
<%--            </div>--%>


            <div class="reg">
                <div class="login-error">
                    <form:errors path="user.*" />
                </div>
                <span style="font-size: 34px; color: #6c757d;">Регистрация</span><br>            <br>

                <form:form method="post" modelAttribute="user" class="login-form">

                        <form:input type="hidden"  path="firstname" placeholder="Имя"
                                    class="form-control" />
                        <span class="input-group-btn" style="width:20px"></span>
                    <br>
                        <form:input type="hidden"  path="surname" placeholder="Фамилия"
                                    class="form-control" />
                    <br>
<%--                    <form:input type="city" path="city" placeholder="Ваш город"--%>
<%--                                class="form-control" />--%>
<%--                    <br>--%>

                    <form:input type="text" path="email" placeholder="Электронная почта"
                                    class="form-control" />
                    <br>


                    <form:input type="password" path="plainPassword" placeholder="Пароль"
                                    class="form-control" />
                    <br>




                    <form:input type="password" path="repeatPassword" placeholder="Повторите пароль"
                               class="form-control" />
                    <br>
                    <span style="font-size: 16px; color: #343a40; float: left;">
                        Ваша страна

                    </span>
                    <select name="country" id="country" style="font-size: 15px;">
                        <c:forEach items="${mapCountries}" var="country">
                            <option value="${country.key}">${country.value}</option>
                        </c:forEach>
                    </select>
                    <br>


                    <%--                    <c:if test="${allowed == true}">--%>
<%--                        Выберете Вашу профессиональную сферу (одну или несколько)--%>
<%--                    <table class="regist">--%>

<%--                        <tr style="text-align: left">--%>
<%--                            <th>--%>
<%--                                <form:checkbox path="ob" value="true"/> Акушерство и гинекология--%>
<%--                            </th>--%>
<%--</tr>--%>
<%--                        <tr style="text-align: left">--%>


<%--                        <th>--%>
<%--                                <form:checkbox path="pediatrition" value="true"/> Педиатрия--%>
<%--                            </th>--%>

<%--                        </tr>--%>

<%--                        <tr style="text-align: left">--%>
<%--                            <th>--%>
<%--                                <form:checkbox path="therapy" value="true"/> Терапия--%>
<%--                            </th>--%>

<%--                        </tr>--%>
<%--                        <tr style="text-align: left">--%>

<%--                        <th>--%>
<%--                                <form:checkbox path="cardiology" value="true"/> Кардиология--%>
<%--                            </th>--%>

<%--                        </tr>--%>

<%--                        <tr style="text-align: left">--%>
<%--                            <th>--%>
<%--                                <form:checkbox path="gastro" value="true"/> Гастроентерология--%>
<%--                            </th>--%>

<%--                        </tr>--%>
<%--                        <tr style="text-align: left">--%>

<%--                        <th>--%>
<%--                                <form:checkbox path="otolor" value="true"/> Отоларингология--%>
<%--                            </th>--%>

<%--                        </tr>--%>

<%--                        <tr style="text-align: left">--%>
<%--                            <th>--%>
<%--                                <form:checkbox path="endocrinology" value="true"/> Ендокринология--%>

<%--                            </th>--%>
<%--                        </tr>--%>
<%--                        <tr style="text-align: left">--%>


<%--                        <th>--%>
<%--                                <form:checkbox path="alergology" value="true"/> Аллергология--%>

<%--                            </th>--%>

<%--                        </tr>--%>


<%--                        <tr style="text-align: left">--%>
<%--                            <th>--%>
<%--                                <form:checkbox path="neurology" value="true"/> Неврология--%>
<%--                            </th>--%>

<%--                        </tr>--%>
<%--                        <tr style="text-align: left">--%>

<%--                        <th>--%>
<%--                                <form:checkbox path="opht" value="true"/> Офтальмология--%>
<%--                            </th>--%>

<%--                        </tr>--%>


<%--                        <tr style="text-align: left">--%>
<%--                            <th>--%>
<%--                                <form:checkbox path="surgery" value="true"/> Общая хирургия--%>

<%--                            </th>--%>

<%--                        </tr>--%>
<%--                        <tr style="text-align: left">--%>

<%--                        <th>--%>
<%--                                <form:checkbox path="orthopedy" value="true"/> Ортопедия--%>
<%--                            </th>--%>


<%--                        </tr>--%>

<%--                        <tr style="text-align: left">--%>
<%--                            <th>--%>
<%--                                <form:checkbox path="vascularsurgery" value="true"/> Сосудистая хирургия--%>

<%--                            </th>--%>
<%--                        </tr>--%>
<%--                        <tr style="text-align: left">--%>


<%--                        <th>--%>
<%--                                <form:checkbox path="plasticsurgery" value="true"/> Пластическая хирургия--%>

<%--                            </th>--%>

<%--                        </tr>--%>
<%--                    </table>--%>
<%--                        <br>--%>
<%--                    </c:if>--%>
                    <br>
                        <button type="submit" class="btn-reg">Регистрация</button>

                        <form:input type="hidden" name="role" path="role" value="${role}"
                                    class="form-control" />

                </form:form>

            </div>
        </div>

<%--    </div>--%>



