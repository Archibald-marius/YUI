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


<div class="row">

    <div class="col-md-8 col-md-offset-2">


        <div class="panel panel-default">

            <div class="panel-heading">
                <div class="panel-title" style="color: #6c757d;">Изменить информацию о пациенте</div>
            </div>
            <br>

            <div class="panel-body">

                <form:form modelAttribute="patients">


<table class="regist" style="font-size: 20px; color: #6c757d;">
    <tr>
        <td>
            Имя

        </td>
        <td>
            <form:input path="name" rows="1" cols="34" cssStyle="width: 450px"></form:input>

        </td>
    </tr>
    <tr>
        <td>
            Адрес

        </td>
        <td>
            <form:textarea path="address" rows="3" cols="34"></form:textarea>

        </td>
    </tr> <tr>
    <td>
        Работа

    </td>
    <td>
        <form:textarea path="work" rows="3" cols="34"></form:textarea>
    </td>
</tr> <tr>
    <td>
        Диагноз

    </td>
    <td>
        <form:textarea path="diagnosis" rows="4" cols="34"></form:textarea>

    </td>
</tr> <tr>
    <td>
        Почта

    </td>
    <td>
        <form:input path="mail" rows="1" cols="34" cssStyle="width: 450px"></form:input>

    </td>
</tr>
    </tr> <tr>
    <td>


    </td>
    <td>
        <input class="btn-reg" type="submit" name="submit" value="Изменить" />

    </td>
</tr>




</table>


                </form:form>

            </div>


        </div>



    </div>



</div>
