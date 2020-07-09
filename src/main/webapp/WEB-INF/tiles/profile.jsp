<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<c:url var="img" value="/img" />
<c:url var="editProfileAbout" value="/edit-profile-about" />


<div class="row">

    <div class="col-md-10 col-md-offset-1 col-sm-8 col-sm-offset-2">

            <div class="profile-image">
                <img src="${img}/8.png" width="300" height="300" style="float: left; margin: 0px 0px 0px 0px;"/>



                </div>
            <div class="profile-text" style="font-size: 20px;">
                <span style="font-size: 22px;">
                   <c:out value="${profile.firstname}"/>
                <c:out value="${profile.surname}"/>
                </span>
                <br>


                <br>
                <span style="color: lightslategray">
<spring:message code="label.profileCity" var="profileCity"></spring:message>
                ${profileCity}:                </span>
<c:if test="${profile.city != ''}">
    <c:out value="${profile.city}"/>
</c:if>
                <c:if test="${profile.city == ''}">
                    <spring:message code="label.noData" var="noData"></spring:message>
                    ${noData}
                </c:if>
                <br>

                <c:if test="${bach == 1}">

<span style="color: lightslategray">
 <spring:message code="label.profileHospital" var="profileHospital"></spring:message>
                ${profileHospital}:              </span>
                    <c:if test="${profile.hospital != ''}">
                        <c:out value="${profile.hospital}"/>
                    </c:if>
                    <c:if test="${profile.hospital == ''}">
                        <spring:message code="label.noData" var="noData"></spring:message>
                        ${noData}
                    </c:if>
                <br>

                    <span style="color: lightslategray">
                        <spring:message code="label.profileSpeciality" var="profileSpeciality"></spring:message>
                ${profileSpeciality}:
           </span>
                <c:if test="${profile.therapy == true}">
                    <spring:message code="label.therapy" var="therapy"></spring:message>
                    ${therapy};
                </c:if>
                <c:if test="${profile.surgery == true}">
                    <spring:message code="label.surgery" var="surgery"></spring:message>
                    ${surgery};
                </c:if>
                <c:if test="${profile.gynecology == true}">
                    <spring:message code="label.gynecology" var="gynecology"></spring:message>
                    ${gynecology};
                </c:if>
                <c:if test="${profile.cardiology == true}">
                    <spring:message code="label.cardio" var="cardio"></spring:message>
                    ${cardio};
                </c:if>
                <c:if test="${profile.gastro == true}">
                    <spring:message code="label.gastro" var="gastro"></spring:message>
                    ${gastro};
                </c:if>
                <c:if test="${profile.neurology == true}">
                    <spring:message code="label.neuro" var="neuro"></spring:message>
                    ${neuro};
                </c:if>
                <c:if test="${profile.opht == true}">
                    <spring:message code="label.ophtalm" var="ophtalm"></spring:message>
                    ${ophtalm};
                </c:if>
                <c:if test="${profile.otolor == true}">
                    <spring:message code="label.oto" var="oto"></spring:message>
                    ${oto};
                </c:if>
                <c:if test="${profile.ob == true}">
                    <spring:message code="label.ob" var="ob"></spring:message>
                    ${ob};
                </c:if>
                <c:if test="${profile.reproductology == true}">
                    <spring:message code="label.repro" var="repro"></spring:message>
                    ${repro};
                </c:if>
                <c:if test="${profile.pediatrition == true}">
                    <spring:message code="label.ped" var="ped"></spring:message>
                    ${ped};
                </c:if>
                <c:if test="${profile.vascularsurgery == true}">
                    <spring:message code="label.vas" var="vas"></spring:message>
                    ${vas};
                </c:if>
                <c:if test="${profile.plasticsurgery == true}">
                    <spring:message code="label.plast" var="plast"></spring:message>
                    ${plast};
                </c:if>
                <c:if test="${profile.alergology == true}">
                    <spring:message code="label.aler" var="aler"></spring:message>
                    ${aler};
                </c:if>
                <c:if test="${profile.endocrinology == true}">
                    <spring:message code="label.endocrin" var="endocrin"></spring:message>
                    ${endocrin};
                </c:if>
                    <c:if test="${profile.urology == true}">
                        <spring:message code="label.uro" var="uro"></spring:message>
                        ${uro};
                    </c:if>

                </c:if>
                <c:if test="${bach == 2}">

                    <span style="color: lightslategray">
<spring:message code="label.controlParameters" var="controlParameters"></spring:message>
                ${controlParameters}             </span>

                    <c:if test="${profile.therapy == true}">
                        <spring:message code="label.press" var="press"></spring:message>
                        ${press};                    </c:if>
                    <c:if test="${profile.surgery == true}">
                        <spring:message code="label.temperat" var="temperat"></spring:message>
                        ${temperat};                    </c:if>
                    <c:if test="${profile.alergology == true}">
                        <spring:message code="label.gluc" var="gluc"></spring:message>
                        ${gluc};                   </c:if>
                    <c:if test="${profile.cardiology == true}">
                        <spring:message code="label.pls" var="pls"></spring:message>
                        ${pls};                    </c:if>
                </c:if>

<br>


                <form:form method="post" modelAttribute="profile" class="login-form">
                    <c:if test="${bach == 1}">

                    <c:if test="${profile.published == false}">

                        <c:if test="${ex == true}">
                        <button class="btn-pub" formaction="/publish"><spring:message code="label.publishProfile" var="publishProfile"></spring:message>
                                ${publishProfile}</button>
                        </c:if>
                        <c:if test="${ex == false}">
                            <button class="btn-pub" formaction="/suggest"><spring:message code="label.publishProfile" var="publishProfile"></spring:message>
                                    ${publishProfile}</button>
                        </c:if>
                </c:if>
                <c:if test="${profile.published == true}">
                    <c:if test="${ex == true}">
                        <button class="btn-pub" formaction="/publish"><spring:message code="label.profileButtonNoPublic" var="profileButtonNoPublic"></spring:message>
                                ${profileButtonNoPublic}</button>
                    </c:if>
                    <c:if test="${ex == false}">
                        <button class="btn-pub" formaction="/suggest"><spring:message code="label.profileButtonNoPublic" var="profileButtonNoPublic"></spring:message>
                                ${profileButtonNoPublic}</button>
                    </c:if>                </c:if>
                    <br>
                    <span style="font-size: 12px; color: #343a40;">*<spring:message code="label.profilePublicationHint" var="profilePublicationHint"></spring:message>
                ${profilePublicationHint}
</span>
                    </c:if>

                </form:form>
                <br>
                <form style="">
                    <button class="btn-pat" style="width: 250px; height: 40px" formaction="${editProfileAbout}"><spring:message code="label.profileEdit" var="profileEdit"></spring:message>
                        ${profileEdit}</button>
<br>
                </form>
<br>

            </div>
<br>
        </div>
<br>
          </div>





