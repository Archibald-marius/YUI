<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.3/jquery-ui.min.js"></script>

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

    <span style="font-size: 28px; color: #6c757d;"><spring:message code="label.patientRegistration" var="patientRegistration"></spring:message>
        ${patientRegistration}</span><br>            <br>

    <form:form method="post" modelAttribute="patient" class="login-form">

        <span style="font-size: 16px; color: #343a40">

        <spring:message code="label.patientsName" var="patientsName"></spring:message>
        ${patientsName}
        <form:input type="text" path="name" placeholder=""
                    class="form-control" />
        <span class="input-group-btn" style="width:20px"></span>
        <br>
            <br>

        <spring:message code="label.patientsAddress" var="patientsAddress"></spring:message>
        ${patientsAddress}
        <form:textarea type="text" path="address" placeholder=""
                    class="form-control" />
        <br>
        <spring:message code="label.patientsWork" var="patientsWork"></spring:message>
        ${patientsWork}
        <form:input type="work" path="work" placeholder=""
                    class="form-control" />
        <br>
        <spring:message code="label.patientsPhone" var="patientsPhone"></spring:message>
        ${patientsPhone}
        <form:input type="phone" path="phone" placeholder=""
                    class="form-control" />
        <br>
        <spring:message code="label.patientsBirth" var="patientsBirth"></spring:message>
        ${patientsBirth}
        <br>
        <span style="color: darkslategrey; float: right; font-size: 12px;">*dd/mm/yyyy</span>
                        <form:input path="date_b" class="form-control" type="text" id="datepicker" placeholder="" data-date-format="dd/mm/yyyy"/>
<br>

        <spring:message code="label.patientsDiagnosis" var="patientsDiagnosis"></spring:message>
        ${patientsDiagnosis}
        <form:textarea type="text" path="diagnosis" placeholder=""
                    class="form-control" />
        <br>

        <spring:message code="label.patientMain" var="patientMain"></spring:message>
        ${patientMain}
        <form:input type="mail" path="mail" placeholder=""
                    class="form-control" />
        <br>
                            <c:if test="${zax == true}">
                                <spring:message code="label.patientPregnancy" var="patientPregnancy"></spring:message>
                                ${patientPregnancy}
                                                        <form:input name="pregnancy" path="pregnancy" placeholder=""
                                                                    class="form-control" />
<br>
                                <spring:message code="label.patientLabour" var="patientLabour"></spring:message>
                                ${patientLabour}
                                                        <form:input name="labour" path="labour" placeholder=""
                                                                    class="form-control" />
                                <br>
                            </c:if>

        </span>

        <button type="submit" class="btn-reg"><spring:message code="label.tabRegister" var="tabRegister"></spring:message>
                ${tabRegister}</button>



    </form:form>

</div>




