<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="row">


<div class="reg">

    <span style="font-size: 34px; color: #6c757d;"><spring:message code="label.editProfileAbout" var="editProfileAbout"></spring:message>
        ${editProfileAbout}</span><br>            <br>

    <form:form method="post" modelAttribute="profile" class="login-form">
    <span style="font-size: 16px; color: #343a40">

        <spring:message code="label.profileName" var="profileName"></spring:message>
        ${profileName}
        <form:input type="text" path="firstname" placeholder=""
                    class="form-control" />
        <span class="input-group-btn" style="width:20px"></span>
        <br>
        <br>
        <spring:message code="label.profileSurname" var="profileSurname"></spring:message>
        ${profileSurname}
        <form:input type="text" path="surname" placeholder=""
                    class="form-control" />
        <br>
        <spring:message code="label.profileCity" var="profileCity"></spring:message>
        ${profileCity}
        <form:input type="city" path="city" placeholder=""
                    class="form-control" />
        <br>



<%--        <form:input type="text" path="email" placeholder="Електронная почта"--%>
<%--                    class="form-control" />--%>
<%--        <br>--%>


        <c:if test="${allowed == true}">
            <spring:message code="label.profileHospital" var="profileHospital"></spring:message>
            ${profileHospital}
            <form:input type="hospital" path="hospital" placeholder=""
                        class="form-control" />
            <br>
            </span>
            <span style="font-size: 16px;">
<spring:message code="label.profileSpeciality" var="profileSpeciality"></spring:message>
                ${profileSpeciality}
                <br>
            </span>
            <table class="regist">

                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="ob" value="true"/>
                        <spring:message code="label.aANDg" var="aANDg"></spring:message>
                            ${aANDg}
                    </th>
                </tr>
                <tr style="text-align: left">


                    <th>
                        <form:checkbox path="pediatrition" value="true"/>
                        <spring:message code="label.ped" var="ped"></spring:message>
                            ${ped}
                    </th>

                </tr>

                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="therapy" value="true"/>
                        <spring:message code="label.therapy" var="therapy"></spring:message>
                            ${therapy}
                    </th>

                </tr>
                <tr style="text-align: left">

                    <th>
                        <form:checkbox path="cardiology" value="true"/>
                        <spring:message code="label.cardio" var="cardio"></spring:message>
                            ${cardio}
                    </th>

                </tr>

                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="gastro" value="true"/>
                        <spring:message code="label.gastro" var="gastro"></spring:message>
                            ${gastro}
                    </th>

                </tr>
                <tr style="text-align: left">

                    <th>
                        <form:checkbox path="otolor" value="true"/>
                        <spring:message code="label.oto" var="oto"></spring:message>
                            ${oto}
                    </th>

                </tr>

                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="endocrinology" value="true"/>
                        <spring:message code="label.endocrin" var="endocrin"></spring:message>
                            ${endocrin}

                    </th>
                </tr>
                <tr style="text-align: left">


                    <th>
                        <form:checkbox path="alergology" value="true"/>
                        <spring:message code="label.aler" var="aler"></spring:message>
                            ${aler}

                    </th>

                </tr>


                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="neurology" value="true"/>
                        <spring:message code="label.neuro" var="neuro"></spring:message>
                            ${neuro}
                    </th>

                </tr>
                <tr style="text-align: left">

                    <th>
                        <form:checkbox path="opht" value="true"/>
                        <spring:message code="label.ophtalm" var="ophtalm"></spring:message>
                            ${ophtalm}
                    </th>

                </tr>


                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="surgery" value="true"/>
                        <spring:message code="label.surgery" var="surgery"></spring:message>
                            ${surgery}

                    </th>

                </tr>
                <tr style="text-align: left">

                    <th>
                        <form:checkbox path="orthopedy" value="true"/>
                        <spring:message code="label.trauma" var="trauma"></spring:message>
                            ${trauma}
                    </th>


                </tr>

                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="vascularsurgery" value="true"/>
                        <spring:message code="label.vas" var="vas"></spring:message>
                            ${vas}

                    </th>
                </tr>
                <tr style="text-align: left">


                    <th>
                        <form:checkbox path="plasticsurgery" value="true"/>
                        <spring:message code="label.plast" var="plast"></spring:message>
                            ${plast}

                    </th>

                </tr>
                <tr style="text-align: left">
                    <th>
                        <form:checkbox path="urology" value="true"/>
                        <spring:message code="label.uro" var="uro"></spring:message>
                            ${uro}

                    </th>
                </tr>
            </table>
            <br>
        </c:if>

        <c:if test="${zenex == true}">
            <span style="font-size: 18px;"><spring:message code="label.controlParameters" var="controlParameters"></spring:message>
                ${controlParameters}:</span>
    <br>
            <br>
    <table class="regist">

        <tr style="text-align: left">
            <th>
                <form:checkbox path="therapy" value="true"/>
                <spring:message code="label.press" var="press"></spring:message>
                    ${press}
            </th>
        </tr>
        <tr style="text-align: left">


            <th>
                <form:checkbox path="cardiology" value="true"/>
                <spring:message code="label.pls" var="pls"></spring:message>
                    ${pls}
            </th>

        </tr>

        <tr style="text-align: left">
            <th>
                <form:checkbox path="surgery" value="true"/>
                <spring:message code="label.temperat" var="temperat"></spring:message>
                    ${temperat}
            </th>

        </tr>
        <tr style="text-align: left">

            <th>
                <form:checkbox path="alergology" value="true"/>
                <spring:message code="label.gluc" var="gluc"></spring:message>
                    ${gluc}
            </th>

        </tr>
    </table>

        </c:if>
        <br>
        <button type="submit" class="btn-reg"><spring:message code="label.buttonEdit" var="buttonEdit"></spring:message>
                ${buttonEdit}</button>


    </form:form>

</div>

