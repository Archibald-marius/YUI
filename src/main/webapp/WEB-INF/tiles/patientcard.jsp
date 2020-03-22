<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet" href="css/main.css" type="text/css" />

<c:url var="editPatientCard" value="/editPatientCard/${patient.id}" />
<c:url var="editLink" value="/editPatientCard?id=${patient.id}"/>


<div class="row">

<%--    <div class="col-md-10 col-md-offset-1 col-sm-8 col-sm-offset-2">--%>

        <div class="profile-about">

                <div class="profile-text">

                    <div class="profile-text">
<%--                        <c:out value="${patientName}"/>--%>
<%--                        <c:out value="${patientId}"/>--%>
    <div class="container">
        <table class="patients">

            <tr>
                <th>Имя</th>
                <th>         <c:out value="${patient.name}"/>
                </th>
            </tr>
            <tr>
                <th>Адрес</th>
                <th>    <c:out value="${patient.address}"/>
                </th>
            </tr>
            <tr>
                <th>Место работы</th>
                <th> <c:out value="${patient.work}"/></th>
            </tr>
            <tr>
                <th> Дата Рождения</th>
                <th>        <c:out value="${patient.birsd}"/>
                </th>
            </tr>
            <tr>
                <th>Неделя беременности</th>
                <th>         <c:out value="${patient.weeks}"/>
                </th>
            </tr>
            <tr>
                <th>Беременность</th>
                <th>         <c:out value="${patient.pregnancy}"/>
                </th>
            </tr>
            <tr>
                <th>Роды</th>
                <th>         <c:out value="${patient.labour}"/>
                </th>
            </tr>
            <tr>
                <th>Заметки</th>
                <th>         <c:out value="${patient.notes}"/>
                </th>
            </tr>
        </table>
        <form>
            <button class="btn-pat" formaction="${editLink}">Зарегистровать новую явку</button>
            <button class="btn-pat" formaction="${editPatientCard}">Изменить данные пациента</button>
        </form>



<%--    </div>--%>





                    </div>


                </div>


        </div>
<%--        <div class="profile-about-edit">--%>
<%--            <a href="${editProfileAbout}">edit</a>--%>
<%--        </div>--%>


    </div>



</div>