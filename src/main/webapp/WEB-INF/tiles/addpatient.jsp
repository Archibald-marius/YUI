<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="row">

    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">


        <div class="panel panel-default" style="color: white;">

            <div class="panel-heading">
                <span style="color: #495057; font-size: 24px;">Добавить пациента</span>
            </div>


            <div class="panel-body">
                <form:form modelAttribute="patient">


                    <div class="input-group">
                        <form:input type="hidden" name="doctor" path="doctor" value="${doctor}"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="name" path="name" placeholder="Имя пациента"
                                    class="form-control" />
                    </div>


<%--                    <div class="input-group">--%>
<%--                        <form:input name="birsd" path="birsd" placeholder="Дата рождения"--%>
<%--                                    class="form-control" />--%>
<%--                    </div>--%>
                    <div class="input-group">
                        <form:input name="address" path="address" placeholder="Адрес проживания"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="work" path="work" placeholder="Место работы"
                                    class="form-control" />
                    </div>


                    <div class="input-group">
                        <form:textarea name="diagnosis" path="diagnosis" placeholder="Первичный диагноз"
                                    class="form-control" />
                    </div>
                    <div class="input-group">
                        <form:textarea name="concomitant" path="concomitant" placeholder="Супуствующие диагнозы"
                                    class="form-control" />
                    </div>
                    <div class="input-group">
                        <form:input name="mail" path="mail" placeholder="Електронная почта"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:textarea name="notes" path="notes" placeholder="Заметки"
                                    class="form-control" />
                    </div>

                    <c:if test="${zax == true}">

                    <div class="input-group">
                        <form:input name="pregnancy" path="pregnancy" placeholder="Беременность"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="labour" path="labour" placeholder="Роды"
                                    class="form-control" />
                    </div>

</c:if>
                    <div class="input-group">
                        <button type="submit" class="btn-reg">Зарегистрировать</button>
                    </div>



                </form:form>
            </div>
        </div>

    </div>



</div>