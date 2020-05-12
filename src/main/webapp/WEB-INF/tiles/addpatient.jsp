<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<%--<div class="row">--%>

<%--    <div class="col-md-8 col-md-offset-2">--%>


<%--        <div class="panel panel-default">--%>

<%--            <div class="panel-heading">--%>
<%--                <div class="panel-title" style="color: #6c757d;">Добавить пациента</div>--%>
<%--            </div>--%>
<%--            <br>--%>


<%--            <div class="panel-body">--%>
<%--                <form:form modelAttribute="patient">--%>


<%--                    <div class="input-group">--%>
<%--                        <form:input type="hidden" name="doctor" path="doctor" value="${doctor}"--%>
<%--                                    class="form-control" />--%>
<%--                    </div>--%>
<%--                    <table class="regist" style="font-size: 20px; color: #6c757d;">--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                Имя--%>

<%--                            </td>--%>

<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <form:input path="name" cssStyle="width: 300px"></form:input>--%>

<%--                            </td>--%>

<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                Адрес--%>

<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <form:textarea path="address" cssStyle="width: 300px;"></form:textarea>--%>

<%--                            </td>--%>
<%--                        </tr> <tr>--%>
<%--                        <td>--%>
<%--                            Работа--%>

<%--                        </td>--%>
<%--                    </tr>--%>
<%--                        <tr>--%>
<%--                        <td>--%>
<%--                            <form:textarea path="work" cssStyle="width: 300px;"></form:textarea>--%>
<%--                        </td>--%>
<%--                    </tr> <tr>--%>
<%--                        <td>--%>
<%--                            Диагноз--%>

<%--                        </td>--%>
<%--                    </tr>--%>
<%--                        <tr>--%>
<%--                        <td>--%>
<%--                            <form:textarea path="diagnosis" cssStyle="width: 300px;"></form:textarea>--%>

<%--                        </td>--%>
<%--                    </tr> <tr>--%>
<%--                        <td>--%>
<%--                            Почта--%>

<%--                        </td>--%>
<%--                    </tr>--%>
<%--                        <tr>--%>
<%--                        <td>--%>
<%--                            <form:input path="mail" cssStyle="width: 300px"></form:input>--%>

<%--                        </td>--%>
<%--                    </tr>--%>
<%--                        </tr> <tr>--%>

<%--                        <td>--%>
<%--                            <input class="btn-reg" type="submit" name="submit" style="width: 300px;" value="Зарегистрировать" />--%>

<%--                        </td>--%>
<%--                    </tr>--%>




<%--                    </table>--%>

<%--                    <c:if test="${zax == true}">--%>

<%--                    <div class="input-group">--%>
<%--                        <form:input name="pregnancy" path="pregnancy" placeholder="Беременность"--%>
<%--                                    class="form-control" />--%>
<%--                    </div>--%>


<%--                        <div class="input-group">--%>
<%--                            <br>--%>
<%--                            <br>--%>
<%--                        <form:input name="labour" path="labour" placeholder="Роды"--%>
<%--                                    class="form-control" />--%>
<%--                    </div>--%>

<%--</c:if>--%>




<%--                </form:form>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--    </div>--%>



<%--</div>--%>
<div class="reg">

    <span style="font-size: 28px; color: #6c757d;">Регистрация пациента</span><br>            <br>

    <form:form method="post" modelAttribute="patient" class="login-form">

        <form:input type="text" path="name" placeholder="Имя"
                    class="form-control" />
        <span class="input-group-btn" style="width:20px"></span>
        <br>
        <form:textarea type="text" path="address" placeholder="Адрес"
                    class="form-control" />
        <br>
        <form:input type="work" path="work" placeholder="Работа"
                    class="form-control" />
        <br>
        <form:input type="phone" path="phone" placeholder="Телефон"
                    class="form-control" />
        <br>

        <form:input type="date_b" path="date_b" placeholder="Дата рождения"
                    class="form-control" />
        <br>

        <form:textarea type="text" path="diagnosis" placeholder="Диагноз"
                    class="form-control" />
        <br>


        <form:input type="mail" path="mail" placeholder="Электронная почта"
                    class="form-control" />
        <br>
                            <c:if test="${zax == true}">
                                                        <form:input name="pregnancy" path="pregnancy" placeholder="Беременность"
                                                                    class="form-control" />
<br>
                                                        <form:input name="labour" path="labour" placeholder="Роды"
                                                                    class="form-control" />
                                <br>
                            </c:if>


        <button type="submit" class="btn-reg">Регистрация</button>



    </form:form>

</div>