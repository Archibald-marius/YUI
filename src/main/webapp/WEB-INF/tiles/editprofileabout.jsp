<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="row">

    <div class="col-md-8 col-md-offset-2">


        <div class="panel panel-default">

            <div class="panel-heading">
                <div class="panel-title">Edit About</div>
            </div>

            <div class="panel-body">

                <form:form modelAttribute="profile">

                    <fieldset class="boxBody">
                        <label>Username</label>
                        <form:input path="firstname"/>

<%--                        <label>Username</label>--%>
<%--                        <form:input path="surname"/>--%>


                    </fieldset>
                    <fieldset class="boxBody">
                        <label>Username</label>
                        <form:input path="role"/>

                            <%--                        <label>Username</label>--%>
                            <%--                        <form:input path="surname"/>--%>


                    </fieldset>
                    <footer>
                            <c:if test="${profile.therapy == false}">
                                <form:checkbox path="therapy" value="true"/>
                            </c:if>
                        <c:if test="${profile.therapy == true}">
                                <form:checkbox path="therapy" value="true" checked="checked"/>
                            </c:if>
                        <label>Терапия?</label>

                        <c:choose>
                            <c:when test="${profile.surgery == false}">
                                <form:checkbox path="surgery" value="true"/>
                            </c:when>
                            <c:otherwise>
                                <form:checkbox path="surgery" value="true" checked="checked"/>
                            </c:otherwise>
                        </c:choose>
                        <label>Хирургия?</label>

                        <c:choose>
                            <c:when test="${profile.gynecology = true}">
                                <form:checkbox path="gynecology" value="true"/>
                            </c:when>
                            <c:otherwise>
                                <form:checkbox path="gynecology" value="true" checked="checked"/>
                            </c:otherwise>
                        </c:choose>
                        <label>Гинекология?</label>



                        <br>
                        <input type="submit" class="btnLogin" value="Login" tabindex="4">
                    </footer>
                </form:form>

            </div>


        </div>



    </div>



</div>

