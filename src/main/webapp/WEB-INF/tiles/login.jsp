<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<c:url var="loginUrl" value="/login" />
<c:url var="registerUrl" value="/choose" />
<c:url var="forgotpassword" value="/forgotpassword" />



<%--<div style="text-align: right;padding:5px;margin:5px 0px;background:#ccc;">--%>
<%--    <a href="${pageContext.request.contextPath}/login?lang=en">Login (English)</a>--%>
<%--    <a href="${pageContext.request.contextPath}/login?lang=ru">Login (Russian)</a>--%>
<%--</div>--%>





        <div class="login">
            <c:if test="${param.error != null}">
                <div class="login-error" style="color: #dc3545; font-size: 14px;">Неправильный email или пароль!</div>
            </c:if>

                    <span style="font-size: 14px"><spring:message code="label.invitation1" var="invitation1"></spring:message>
                        ${invitation1} <a href="${registerUrl}">
<spring:message code="label.invitation2" var="invitation2"></spring:message>
                ${invitation2}
                        </a></span>
            <br>
            <br>

            <span style="font-size: 34px; color: #6c757d"><spring:message code="label.tabLogin" var="tabLogin"></spring:message>
                ${tabLogin}</span>
<br>
            <br>

        <%--            <div class="panel-body login">--%>
                <form method="post" action="${loginUrl}" class="login-form">

                    <input type="hidden" name="${_csrf.parameterName}"
                           value="${_csrf.token}" />

                        <input type="text" name="username" placeholder="<spring:message code="label.formLoginMail" var="formLoginMail"></spring:message>
                ${formLoginMail}"
                               class="form-control" />
                            <br>
                        <input type="password" name="password" placeholder="<spring:message code="label.formLoginPassword" var="formLoginPassword"></spring:message>
                ${formLoginPassword}"
                               class="form-control" />
<br>
                        <button type="submit" style="background-color: #b0e6df; width: 110px; font-size: 18px">
                            <spring:message code="label.submit" var="labelSubmit"></spring:message>
                           ${labelSubmit}
                            </button>

                </form>
            <br>

            <span style="font-size: 14px"><a href="${forgotpassword}"> <spring:message code="label.passwordRecovery" var="passwordRecovery"></spring:message>
                ${passwordRecovery}</a>
</span>

<%--            </div>--%>
        </div>




