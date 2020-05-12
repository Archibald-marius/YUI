<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 22.03.2020
  Time: 6:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--<c:url var="patientEditCard" value="/editPatientCard/${patients.id}"/>--%>


<%--<div class="row">--%>

<%--    <div class="col-md-8 col-md-offset-2">--%>


<%--        <div class="panel panel-default">--%>

<%--            <div class="panel-heading">--%>
<%--                <div class="panel-title" style="color: #6c757d;">Изменить информацию о пациенте</div>--%>
<%--            </div>--%>

<%--            <div class="panel-body">--%>

<%--                <form:form modelAttribute="patients">--%>


<%--<table class="regist" style="font-size: 20px; color: #6c757d;">--%>
<%--    <tr>--%>
<%--        <td>--%>
<%--            Имя--%>

<%--        </td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td>--%>
<%--            <form:input path="name" cssStyle="width: 300px"></form:input>--%>

<%--        </td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td>--%>
<%--            Адрес--%>

<%--        </td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td>--%>
<%--            <form:textarea path="address" cssStyle="width: 300px"></form:textarea>--%>

<%--        </td>--%>
<%--    </tr> <tr>--%>
<%--    <td>--%>
<%--        Работа--%>

<%--    </td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--    <td>--%>
<%--        <form:textarea path="work" cssStyle="width: 300px"></form:textarea>--%>
<%--    </td>--%>
<%--</tr> <tr>--%>
<%--    <td>--%>
<%--        Диагноз--%>

<%--    </td>--%>
<%--    <tr>--%>
<%--    <td>--%>
<%--        <form:textarea path="diagnosis" cssStyle="width: 300px"></form:textarea>--%>

<%--    </td>--%>
<%--</tr> <tr>--%>
<%--    <td>--%>
<%--        Почта--%>

<%--    </td>--%>
<%--</tr>--%>
<%--    <tr>--%>
<%--    <td>--%>
<%--        <form:input path="mail" cssStyle="width: 300px"></form:input>--%>

<%--    </td>--%>
<%--</tr>--%>
<%--    </tr> <tr>--%>

<%--    <td>--%>
<%--        <input class="btn-reg" type="submit" name="submit" value="Изменить" style="width: 300px;" />--%>

<%--    </td>--%>
<%--</tr>--%>




<%--</table>--%>


<%--                </form:form>--%>

<%--            </div>--%>


<%--        </div>--%>



<%--    </div>--%>



<%--</div>--%>



<div class="reg">

    <span style="font-size: 28px; color: #6c757d;">Изменить данные пациента</span><br>            <br>

    <form:form method="post" modelAttribute="patients" class="login-form">

        <form:input type="text" path="name" placeholder="Имя"
                    class="form-control" />
        <span class="input-group-btn" style="width:20px"></span>
        <br>
        <form:textarea type="text" path="address" placeholder="Адрес"
                       class="form-control" />
        <br>
        <form:input type="city" path="work" placeholder="Работа"
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


        <form:input type="text" path="mail" placeholder="Електронная почта"
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


        <button type="submit" class="btn-reg">Изменить</button>



    </form:form>

</div>
