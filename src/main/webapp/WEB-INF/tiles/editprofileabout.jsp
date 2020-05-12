<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="row">

<%--    <div class="col-md-8 col-md-offset-2">--%>


<%--        <div class="panel panel-default">--%>

<%--            <div class="panel-heading">--%>
<%--                <div class="panel-title" style="color: white;">Редактировать личную информацию</div>--%>
<%--            </div>--%>

<%--            <div class="panel-body">--%>

<%--                <form:form modelAttribute="profile">--%>

<%--&lt;%&ndash;                    <fieldset class="boxBody">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <label>Username</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <form:input path="firstname"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <form:input path="city"/>&ndash;%&gt;--%>






<%--                        <form:input type="text" path="firstname" placeholder="Имя"--%>
<%--                                    class="form-control" />--%>
<%--                        <span class="input-group-btn" style="width:20px"></span>--%>
<%--                        <br>--%>
<%--                        <form:input type="text" path="surname" placeholder="Фамилия"--%>
<%--                                    class="form-control" />--%>
<%--                        <br>--%>
<%--                        <form:input type="city" path="city" placeholder="Ваш город"--%>
<%--                                    class="form-control" />--%>
<%--                        <br>--%>
<%--                    <form:input type="city" path="hospital" placeholder="Лечебное учреждение"--%>
<%--                                class="form-control" />--%>
<%--                    <br>--%>

<%--                     Выберете Вашу профессиональную сферу (одну или несколько)--%>
<%--                            <table class="regist">--%>

<%--                                <tr style="text-align: left">--%>
<%--                                    <th>--%>
<%--                                        <form:checkbox path="ob" value="true"/> Акушерство и гинекология--%>
<%--                                    </th>--%>


<%--                                    <th>--%>
<%--                                        <form:checkbox path="pediatrition" value="true"/> Педиатрия--%>
<%--                                    </th>--%>

<%--                                </tr>--%>

<%--                                <tr style="text-align: left">--%>
<%--                                    <th>--%>
<%--                                        <form:checkbox path="therapy" value="true"/> Терапия--%>
<%--                                    </th>--%>


<%--                                    <th>--%>
<%--                                        <form:checkbox path="cardiology" value="true"/> Кардиология--%>
<%--                                    </th>--%>

<%--                                </tr>--%>

<%--                                <tr style="text-align: left">--%>
<%--                                    <th>--%>
<%--                                        <form:checkbox path="gastro" value="true"/> Гастроентерология--%>
<%--                                    </th>--%>


<%--                                    <th>--%>
<%--                                        <form:checkbox path="otolor" value="true"/> Отоларингология--%>
<%--                                    </th>--%>

<%--                                </tr>--%>

<%--                                <tr style="text-align: left">--%>
<%--                                    <th>--%>
<%--                                        <form:checkbox path="endocrinology" value="true"/> Ендокринология--%>

<%--                                    </th>--%>


<%--                                    <th>--%>
<%--                                        <form:checkbox path="alergology" value="true"/> Аллергология--%>

<%--                                    </th>--%>

<%--                                </tr>--%>


<%--                                <tr style="text-align: left">--%>
<%--                                    <th>--%>
<%--                                        <form:checkbox path="neurology" value="true"/> Неврология--%>
<%--                                    </th>--%>


<%--                                    <th>--%>
<%--                                        <form:checkbox path="opht" value="true"/> Офтальмология--%>
<%--                                    </th>--%>

<%--                                </tr>--%>


<%--                                <tr style="text-align: left">--%>
<%--                                    <th>--%>
<%--                                        <form:checkbox path="surgery" value="true"/> Общая хирургия--%>

<%--                                    </th>--%>


<%--                                    <th>--%>
<%--                                        <form:checkbox path="orthopedy" value="true"/> Ортопедия--%>
<%--                                    </th>--%>


<%--                                </tr>--%>

<%--                                <tr style="text-align: left">--%>
<%--                                    <th>--%>
<%--                                        <form:checkbox path="vascularsurgery" value="true"/> Сосудистая хирургия--%>

<%--                                    </th>--%>


<%--                                    <th>--%>
<%--                                        <form:checkbox path="plasticsurgery" value="true"/> Пластическая хирургия--%>

<%--                                    </th>--%>

<%--                                </tr>--%>
<%--                                <tr>--%>


<%--                                </tr>--%>
<%--                            </table>--%>
<%--                            <br>--%>
<%--                    <div class="container">--%>
<%--                        <button type="submit" class="btn-reg">Изменить</button>--%>
<%--                    </div>--%>


<%--                        <form:input type="hidden" name="role" path="role" value="${role}"--%>
<%--                                    class="form-control" />--%>

<%--&lt;%&ndash;                        <label>Username</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <form:input path="surname"/>&ndash;%&gt;--%>


<%--&lt;%&ndash;                    <footer>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <c:if test="${profile.therapy == false}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <form:checkbox path="therapy" value="true"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </c:if>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <c:if test="${profile.therapy == true}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <form:checkbox path="therapy" value="true" checked="checked"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </c:if>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <label>Терапия?</label>&ndash;%&gt;--%>

<%--&lt;%&ndash;                        <c:choose>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <c:when test="${profile.surgery == false}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <form:checkbox path="surgery" value="true"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </c:when>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <c:otherwise>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <form:checkbox path="surgery" value="true" checked="checked"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </c:otherwise>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </c:choose>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <label>Хирургия?</label>&ndash;%&gt;--%>

<%--&lt;%&ndash;                        <c:choose>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <c:when test="${profile.gynecology = true}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <form:checkbox path="gynecology" value="true"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </c:when>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <c:otherwise>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <form:checkbox path="gynecology" value="true" checked="checked"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </c:otherwise>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </c:choose>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <label>Гинекология?</label>&ndash;%&gt;--%>



<%--&lt;%&ndash;                        <br>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <input type="submit" class="btnLogin" value="Login" tabindex="4">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </footer>&ndash;%&gt;--%>
<%--                </form:form>--%>

<%--            </div>--%>


<%--        </div>--%>



<%--    </div>--%>



<%--</div>--%>


<div class="reg">

    <span style="font-size: 34px; color: #6c757d;">Изменить профиль</span><br>            <br>

    <form:form method="post" modelAttribute="profile" class="login-form">

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



<%--        <form:input type="text" path="email" placeholder="Електронная почта"--%>
<%--                    class="form-control" />--%>
<%--        <br>--%>


        <c:if test="${allowed == true}">
            <form:input type="hospital" path="hospital" placeholder="Место работы"
                        class="form-control" />
            <br>
            <span style="font-size: 14px;">
                Профессиональная сфера

            </span>
            <table class="regist">

                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="ob" value="true"/> Акушерство и гинекология
                    </th>
                </tr>
                <tr style="text-align: left">


                    <th>
                        <form:checkbox path="pediatrition" value="true"/> Педиатрия
                    </th>

                </tr>

                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="therapy" value="true"/> Терапия
                    </th>

                </tr>
                <tr style="text-align: left">

                    <th>
                        <form:checkbox path="cardiology" value="true"/> Кардиология
                    </th>

                </tr>

                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="gastro" value="true"/> Гастроэнтерология
                    </th>

                </tr>
                <tr style="text-align: left">

                    <th>
                        <form:checkbox path="otolor" value="true"/> Отоларингология
                    </th>

                </tr>

                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="endocrinology" value="true"/> Эндокринология

                    </th>
                </tr>
                <tr style="text-align: left">


                    <th>
                        <form:checkbox path="alergology" value="true"/> Аллергология

                    </th>

                </tr>


                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="neurology" value="true"/> Неврология
                    </th>

                </tr>
                <tr style="text-align: left">

                    <th>
                        <form:checkbox path="opht" value="true"/> Офтальмология
                    </th>

                </tr>


                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="surgery" value="true"/> Общая хирургия

                    </th>

                </tr>
                <tr style="text-align: left">

                    <th>
                        <form:checkbox path="orthopedy" value="true"/> Ортопедия и травматология
                    </th>


                </tr>

                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="vascularsurgery" value="true"/> Сосудистая хирургия

                    </th>
                </tr>
                <tr style="text-align: left">


                    <th>
                        <form:checkbox path="plasticsurgery" value="true"/> Пластическая хирургия

                    </th>

                </tr>
                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="urology" value="true"/> Урология

                    </th>
                </tr>
            </table>
            <br>
        </c:if>

        <c:if test="${zenex == true}">
            <span style="font-size: 18px;">Выбраные показатели:</span>
    <br>
            <br>
    <table class="regist">

        <tr style="text-align: left">
            <th>
                <form:checkbox path="therapy" value="true"/> Артериальное давление
            </th>
        </tr>
        <tr style="text-align: left">


            <th>
                <form:checkbox path="cardiology" value="true"/> Пульс
            </th>

        </tr>

        <tr style="text-align: left">
            <th>
                <form:checkbox path="surgery" value="true"/> Температура
            </th>

        </tr>
        <tr style="text-align: left">

            <th>
                <form:checkbox path="alergology" value="true"/> Уровень глюкозы
            </th>

        </tr>
    </table>

        </c:if>
        <br>
        <button type="submit" class="btn-reg">Изменить</button>


    </form:form>

</div>

