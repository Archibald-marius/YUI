<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 24.03.2020
  Time: 2:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="row">

    <div class="col-md-8 col-md-offset-2">


        <div class="panel panel-default">

            <div class="panel-heading">
                <div class="panel-title">Визит ${yavka.normal_date}</div>
            </div>

            <div class="panel-body">

                <form:form modelAttribute="yavka">

                    <div class="input-group">
                        <form:input type="hidden" name="patient" path="patient" value="${patient}"
                                    class="form-control" />
                    </div>
                    <div class="input-group">
                        <span style="color: white; float: left;">Жалобы</span>
                        <form:textarea name="complains" path="complains" placeholder="" cssStyle="height: 100px"
                                       class="form-control" />
                    </div>

                    <div class="input-group" style="display: flex; flex-direction: row; width: 270px">
                        <span style="color: white">Артериальное давление</span>
                        <form:input name="SAT" path="SAT" placeholder=""
                                    class="form-control"/>
                        <span style="font-size: 26px; color: white;"> / </span>
                        <form:input name="DAT" path="DAT" placeholder=""
                                    class="form-control" />
                    </div>

                    <div class="input-group" style="display: flex; flex-direction: row; width: 245px">
                        <span style="color: white">Температура/Пульс</span>
                        <form:input name="temperature" path="temperature" placeholder="36.6"
                                    class="form-control"/>
                        <span style="font-size: 26px; color: white;"> / </span>
                        <form:input name="pulse" path="pulse" placeholder=""
                                    class="form-control" />
                    </div>
                    <div class="input-group">
                        <span style="color: white; float: left;">Результаты анализов</span>
                        <form:textarea name="Analysis" path="Analysis" placeholder="" cssStyle="height: 100px"
                                       class="form-control" />
                    </div>
                    <div class="input-group">
                        <span style="color: white; float: left;">Инструментальное обследование</span>
                        <form:textarea name="instrument" path="instrument" placeholder="" cssStyle="height: 100px"
                                       class="form-control" />
                    </div>
                    <div class="input-group">
                        <span style="color: white; float: left;">Диагноз</span>
                        <form:textarea name="diagnosis" path="diagnosis" placeholder="" cssStyle="height: 100px"
                                       class="form-control" />
                    </div>
                    <div class="input-group">
                        <span style="color: white; float: left;">Назначения</span>
                        <form:textarea name="presriptions" path="prescriptions" placeholder="" cssStyle="height: 100px"
                                       class="form-control" />
                    </div>


                    <span style="color: white; float: left; font-size: 24px">Акушерская панель</span>
                    <br>
                    <br>


                    <div class="input-group" style="display: flex; flex-direction: row; width: 320px">
                        <span style="color: white">ЧСС плода/Вес беременной</span>
                        <form:input name="baby_beat" path="baby_beat" placeholder=""
                                    class="form-control"/>
                        <span style="font-size: 26px; color: white;"> / </span>
                        <form:input name="mass" path="mass" placeholder=""
                                    class="form-control" />
                    </div>

                    <div class="input-group" style="display: flex; flex-direction: row; width: 290px">
                        <span style="color: white">Окружность живота/ВСДМ</span>
                        <form:input name="ab_circ" path="ab_circ" placeholder=""
                                    class="form-control"/>
                        <span style="font-size: 26px; color: white;"> / </span>
                        <form:input name="ab_hig" path="ab_hig" placeholder=""
                                    class="form-control" />
                    </div>


                    <div class="input-group">
                        <button type="submit" class="btn-primary pull-right" style="font-size: 24px;
    width: 360px;
    height: 50px;
    border-radius: 12px;
    background-color: #adb5bd;">Редактировать</button>
                    </div>

                </form:form>

            </div>


        </div>



    </div>



</div>

