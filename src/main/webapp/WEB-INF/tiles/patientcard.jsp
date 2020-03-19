<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<div class="row">

    <div class="col-md-10 col-md-offset-1 col-sm-8 col-sm-offset-2">

        <div class="profile-about">

                <div class="profile-text">

                    <c:choose>
                        <c:when test="${patientInfo.about==null}">
                            Click edit to add info

                        </c:when>

                        <c:otherwise>
                            <c:out value="${patientInfo.about==null}"/>
                        </c:otherwise>
                    </c:choose>


                </div>


        </div>
<%--        <div class="profile-about-edit">--%>
<%--            <a href="${editProfileAbout}">edit</a>--%>
<%--        </div>--%>


    </div>



</div>