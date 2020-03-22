<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url var="loginUrl" value="/login" />

<div class="row">

<%--    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">--%>

        <div class="login-error">
        <form:errors path="user.*" />
        </div>
<div class="form">

        <div class="panel panel-default">

            <div class="panel-heading">
                <div class="panel-title">Реигстрация</div>
            </div>


            <div class="panel-body">
                <form:form method="post" modelAttribute="user" class="login-form">

                    <div class="input-group">
                        <form:input type="text" path="firstname" placeholder="Имя"
                                    class="form-control" />
                        <span class="input-group-btn" style="width:20px"></span>
                        <form:input type="text" path="surname" placeholder="Фамилия"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input type="text" path="email" placeholder="Електронная почта"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input type="password" path="plainPassword" placeholder="Пароль"
                                    class="form-control" />
                    </div>


                    <div class="input-group">
                        <form:input type="password" path="repeatPassword" placeholder="Повторите пароль"
                               class="form-control" />
                    </div>

                    <div class="input-group">
                        <button type="submit" class="btn-reg">Register</button>
                    </div>

                </form:form>
            </div>
<%--        </div>--%>

    </div>
    </div>



</div>