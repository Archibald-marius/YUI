<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url var="loginUrl" value="/login" />
<c:url var="registerUrl" value="/choose" />
<c:url var="forgotpassword" value="/forgotpassword" />









        <div class="login">
            <c:if test="${param.error != null}">
                <div class="login-error" style="color: #dc3545; font-size: 14px;">Неправильный email или пароль!</div>
            </c:if>

                    <span style="font-size: 14px">Войдите или <a href="${registerUrl}">создайте аккаунт бесплатно!</a></span>
            <br>
            <br>

            <span style="font-size: 34px; color: #6c757d">Вход</span>
<br>
            <br>

        <%--            <div class="panel-body login">--%>
                <form method="post" action="${loginUrl}" class="login-form">

                    <input type="hidden" name="${_csrf.parameterName}"
                           value="${_csrf.token}" />

                        <input type="text" name="username" placeholder="Электронная почта"
                               class="form-control" />
                            <br>
                        <input type="password" name="password" placeholder="Пароль"
                               class="form-control" />
<br>
                        <button type="submit" style="background-color: #b0e6df; width: 110px; font-size: 18px">Войти
                            </button>

                </form>
            <br>

            <span style="font-size: 14px"><a href="${forgotpassword}">Восстановить пароль</a>
</span>

<%--            </div>--%>
        </div>




