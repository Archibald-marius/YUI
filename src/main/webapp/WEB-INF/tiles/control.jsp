<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 01.04.2020
  Time: 12:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="row">

    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">


        <div class="panel panel-default">

            <div class="panel-heading">
                <div class="panel-title" style="color: #495057;">Запись от ${control.normal_date}</div>
            </div>


            <div class="login">
                <form:form modelAttribute="control">



                    <c:if test="${ap == true}">
                        <span style="color: #495057; float: left; font-size: 20px;">Артериальное давление</span>
                    <div class="input-group" style="display: flex; flex-direction: row; width: 270px">
                        <form:input name="SAT" path="SAT" placeholder=""
                                    class="form-control"/>
                        <span style="font-size: 26px; color: #495057;"> / </span>
                        <form:input name="DAT" path="DAT" placeholder=""
                                    class="form-control" />
                    </div>
                    </c:if>

                    <c:if test="${pls == true}">

                    <span style="color: #495057; float: left; font-size: 20px;">Пульс</span>
                    <div class="input-group" style="width: 150px;">
                        <form:input name="pulse" path="pulse" placeholder=""
                                    class="form-control" />
                    </div>
                    </c:if>

                    <c:if test="${tmp == true}">

                    <span style="color: #495057; float: left; font-size: 20px;">Температура<br><span style="font-size: 14px">*в формате 36.6</span></span>

                    <div class="input-group" style="width: 150px">
                        <form:input name="temperature" path="temperature" placeholder=""
                                    class="form-control" />
                    </div>
                    </c:if>

                    <c:if test="${glu == true}">

                    <span style="color: #495057; float: left; font-size: 20px;">Глюкоза</span>

                    <div class="input-group" style="width: 150px;">
                        <form:input name="glucose" path="glucose" placeholder=""
                                    class="form-control" />
                    </div>

                    </c:if>


                    <div class="input-group">
                        <button type="submit" class="btn-patients">Записать</button>
                    </div>

                </form:form>
            </div>
        </div>

    </div>



</div>
