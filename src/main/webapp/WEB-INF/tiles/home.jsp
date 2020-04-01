<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="search" value="/search"/>


<c:if test="${ticket == 1}">
    <div class="reg">
        <br>
        <br>
        <br>
<span style="font-size: 34px">Поиск пациента</span>
        <br>
        <br>
        <form action="${search}" method="POST">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}" />

                <input type="text" class="form-control" name="s" placeholder="Фамилия/Имя пациента">
            <br>
                    <button id="search-button" class="btn btn-primary" type="submit">
                        Поиск
                    </button>

                </span>


        </form>
        </div>
    </div>
</c:if>

<c:if test="${ticket == 2}">

Welcome
</c:if>

