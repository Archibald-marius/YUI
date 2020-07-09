<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 23.03.2020
  Time: 11:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
    $(document).ready(function(){
        var date_input= $("#datepicker").datepicker({ dateFormat: "dd/mm/yy" }); //our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            dateFormat: "YY-MM-DD",
            container: container,
            todayHighlight: true,
            autoclose: true,
        })
    })
</script>


<div class="reg">

    <span style="font-size: 24px; color: #6c757d;"><spring:message code="label.newConsultaion" var="newConsultaion"></spring:message>
                ${newConsultaion} ${yavka.normal_date}</span><br>

    <form:form method="post" modelAttribute="yavka" class="login-form">

        <div class="input-group">
            <form:input type="hidden" name="patient" path="patient" value="${patient}"
                        class="form-control" />
        </div>
        <div class="input-group">
            <span style="color: #495057; float: left;"><spring:message code="label.complains" var="complains"></spring:message>
                    ${complains}</span>
            <form:textarea name="complains" path="complains" placeholder="" cssStyle="height: 100px; width: 300px"
                           class="form-control" />
        </div>

        <div class="input-group" style="display: flex; flex-direction: row; width: 270px">
            <span style="color: #495057"><spring:message code="label.press" var="press"></spring:message>
                    ${press}</span>
            <br>
            <form:input name="SAT" path="SAT" placeholder=""
                        class="form-control"/>
            <span style="font-size: 26px; color: #495057;"> / </span>
            <form:input name="DAT" path="DAT" placeholder=""
                        class="form-control" />
        </div>

        <div class="input-group" style="display: flex; flex-direction: row; width: 245px">

            <table>
                <tr>
                    <td>
                        <span style="color: #495057"><spring:message code="label.temperat" var="temperat"></spring:message>
                                ${temperat}<br><span style="font-size: 14px">*<spring:message code="label.tempFormat" var="tempFormat"></spring:message>
                                    ${tempFormat}</span></span>

                    </td>
                    <td>
                        <span style="color: #495057"><spring:message code="label.pls" var="pls"></spring:message>
                                ${pls}</span>

                    </td>
                </tr>

                <tr>
                    <td>
                        <form:input name="temperature" path="temperature" placeholder=""
                                    class="form-control"/>
                    </td>
                    <td>
                        <form:input name="pulse" path="pulse" placeholder=""
                                    class="form-control" />
                    </td>
                </tr>
            </table>
        </div>

        <div class="input-group">
            <span style="color: #495057; float: left;"><spring:message code="label.analysisResult" var="analysisResult"></spring:message>
                    ${analysisResult}</span>
            <form:textarea name="Analysis" path="Analysis" placeholder="" cssStyle="height: 100px; width: 300px"
                           class="form-control" />
        </div>
        <div class="input-group">
            <span style="color: #495057; float: left;"><spring:message code="label.instrumentalResult" var="instrumentalResult"></spring:message>
                    ${instrumentalResult}</span>
            <form:textarea name="instrument" path="instrument" placeholder="" cssStyle="height: 100px; width: 300px"
                           class="form-control" />
        </div>
        <div class="input-group">
            <span style="color: #495057; float: left;"><spring:message code="label.patientsDiagnosis" var="patientsDiagnosis"></spring:message>
                    ${patientsDiagnosis}</span>
            <form:textarea name="diagnosis" path="diagnosis" placeholder="" cssStyle="height: 100px; width: 300px"
                           class="form-control" />
        </div>
        <div class="input-group">
            <span style="color: #495057; float: left;"><spring:message code="label.prescribtion" var="prescribtion"></spring:message>
                    ${prescribtion}</span>
            <form:textarea name="presriptions" path="prescriptions" placeholder="" cssStyle="height: 100px; width: 300px"
                           class="form-control" />
        </div>

        <c:if test="${zax == true}">
<br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br><br>
            <br>
            <br>
            <br>
            <br>
            <br><br>
            <br>
            <br>
            <br>
            <br>
            <br><br>
            <br>
            <br>
            <br>
            <br>

            <span style="color: navy; float: right; font-size: 14px">*<spring:message code="label.abPanel" var="abPanel"></spring:message>
                    ${abPanel}</span>
            <br>
            <div class="input-group" style="display: flex; flex-direction: row; width: 300px">

                <table>
                    <tr>
                        <td>
                            <span style="color: #495057"><spring:message code="label.babyBeat" var="babyBeat"></spring:message>
                                    ${babyBeat}</span>

                        </td>
                        <td>
                            <span style="color: #495057"><spring:message code="label.pregMass" var="pregMass"></spring:message>
                                    ${pregMass}<br><span style="font-size: 14px">*в формате 65.5</span></span>

                        </td>
                    </tr>

                    <tr>
                        <td>
                            <form:input name="baby_beat" path="baby_beat" placeholder=""
                                        class="form-control"/>
                        </td>
                        <td>
                            <form:input name="mass" path="mass" placeholder=""
                                        class="form-control" />
                        </td>
                    </tr>
                </table>
            </div>


            <div class="input-group" style="display: flex; flex-direction: row; width: 300px">

                <table>
                    <tr>
                        <td>
                            <span style="color: #495057"><spring:message code="label.pregCirc1" var="pregCirc1"></spring:message>
                                    ${pregCirc1}<br> <spring:message code="label.pregCirc2" var="pregCirc2"></spring:message>
                                    ${pregCirc2}</span>

                        </td>
                        <td>
                            <span style="color: #495057"><spring:message code="label.abHigh" var="abHigh"></spring:message>
                                    ${abHigh}</span>

                        </td>
                    </tr>

                    <tr>
                        <td>
                            <form:input name="ab_circ" path="ab_circ" placeholder=""
                                        class="form-control"/>
                        </td>
                        <td>
                            <form:input name="ab_hig" path="ab_hig" placeholder=""
                                        class="form-control" />
                        </td>
                    </tr>


                </table>
            </div>
        </c:if>

        <br>


        <span style="color: darkslategrey; float: right; font-size: 12px;">*dd/mm/yyyy</span>
        <br>
        <span style="color: #495057"><spring:message code="label.nextVisit" var="nextVisit"></spring:message>
                ${nextVisit}</span>
        <form:input path="next" cssStyle="float: right; width: 210px" class="form-control" type="text" id="datepicker" placeholder="" data-date-format="dd/mm/yyyy"/>
        <br>

        <br>



        <div class="input-group"><br>
            <button type="submit" class="btn-reg" style="font-size: 24px;
    width: 300px;
    float: left;
    color: black;
    height: 50px;
    border-radius: 12px;
    background-color: #b0e6df;"><spring:message code="label.tabRegister" var="tabRegister"></spring:message>
                    ${tabRegister}</button>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br> <br>
        <br>
        <br>
        <br>
        <br> <br>
        <br>
        <br>
        <br>
        <br> <br>
        <br>
        <br>
        <br>
        <br> <br>
        <br>
        <br>
        <br>
        <br> <br>
        <br>
        <br>
        <br>
        <br> <br>


    </form:form>

</div>
