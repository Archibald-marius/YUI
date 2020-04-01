<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url var="loginUrl" value="/login" />
<c:url var="registerUrl" value="/choose" />






        <c:if test="${param.error != null}">
            <div class="login-error">Incorrect username or password.</div>
        </c:if>

        <div class="login">

                    Войдите или <a href="${registerUrl}">создайте акаунт бесплатно!</a>
            <br>
            <br>

            <span style="font-size: 34px">Вход</span>
<br>
            <br>

        <%--            <div class="panel-body login">--%>
                <form method="post" action="${loginUrl}" class="login-form">

                    <input type="hidden" name="${_csrf.parameterName}"
                           value="${_csrf.token}" />

                        <input type="text" name="username" placeholder="Username"
                               class="form-control" />
                            <br>
                        <input type="password" name="password" placeholder="Password"
                               class="form-control" />
<br>
                        <button type="submit" class="btn-primary pull-right" style="background-color: #343a40">Sign
                            In</button>

                </form>
<%--            </div>--%>
        </div>




