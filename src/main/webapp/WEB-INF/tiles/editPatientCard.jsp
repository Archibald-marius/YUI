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
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    $( function() {
        $( "#datepicker" ).datepicker()({
            dateFormat: 'dd-mm-yyyy'});
    });
</script>


<div class="reg">

    <span style="font-size: 28px; color: #6c757d;"><spring:message code="label.patientEdit" var="patientEdit"></spring:message>
        ${patientEdit}</span><br>            <br>

    <form:form method="post" modelAttribute="patients" class="login-form">

         <span style="color: #495057; float: left;"><spring:message code="label.patientsName" var="patientsName"></spring:message>
                 ${patientsName}</span>
        <form:input type="text" path="name" placeholder=""
                    class="form-control" />
        <span class="input-group-btn" style="width:20px"></span>
        <br>
        <span style="color: #495057; float: left;"><spring:message code="label.patientsAddress" var="patientsAddress"></spring:message>
                ${patientsAddress}</span>
        <form:textarea type="text" path="address" placeholder=""
                       class="form-control" />
        <br>
        <span style="color: #495057; float: left;"><spring:message code="label.patientsWork" var="patientsWork"></spring:message>
                ${patientsWork}</span>
        <form:input type="city" path="work" placeholder=""
                    class="form-control" />
        <br>
        <span style="color: #495057; float: left;"><spring:message code="label.patientsPhone" var="patientsPhone"></spring:message>
                ${patientsPhone}</span>
        <form:input type="phone" path="phone" placeholder=""
                    class="form-control" />
        <br>

<%--        <form:input type="date_b" path="date_b" placeholder="Дата рождения"--%>
<%--                    class="form-control" />--%>
<%--        <br>--%>
        <span style="color: #495057; float: left;"><spring:message code="label.patientsBirth" var="patientsBirth"></spring:message>
                ${patientsBirth}</span>
        <span style="color: darkslategrey; float: right; font-size: 12px;">*dd/mm/yyyy</span>
        <form:input path="date_b" class="form-control" type="text" id="datepicker" placeholder="" data-date-format="dd/mm/yyyy"/>
        <br>

        <span style="color: #495057; float: left;"><spring:message code="label.patientsDiagnosis" var="patientsDiagnosis"></spring:message>
                ${patientsDiagnosis}</span>
        <form:textarea type="text" path="diagnosis" placeholder=""
                       class="form-control" />
        <br>

        <span style="color: #495057; float: left;"><spring:message code="label.tabMail" var="tabMail"></spring:message>
                ${tabMail}</span>
        <form:input type="text" path="mail" placeholder=""
                    class="form-control" />
        <br>
        <c:if test="${zax == true}">
             <span style="color: #495057; float: left;"><spring:message code="label.patientPregnancy" var="patientPregnancy"></spring:message>
                     ${patientPregnancy}</span>
            <form:input name="pregnancy" path="pregnancy" placeholder=""
                        class="form-control" />
            <br>
            <span style="color: #495057; float: left;"><spring:message code="label.patientLabour" var="patientLabour"></spring:message>
                    ${patientLabour}</span>
            <form:input name="labour" path="labour" placeholder=""
                        class="form-control" />
            <br>
        </c:if>


        <button type="submit" class="btn-reg"><spring:message code="label.buttonEdit" var="buttonEdit"></spring:message>
                ${buttonEdit}</button>



    </form:form>

</div>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
    $(document).ready(function(){
        var date_input=$('input[name="date"]'); //our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            dateFormat: 'dd-mm-yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
        })
    })
</script>
