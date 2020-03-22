<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><tiles:insertAttribute name="title" /></title>
    <script type="text/javascript" src="js/index.js"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css" type="text/css" />
    <script type="text/javascript" src="js/index. js"></script>
</head>
<body>

<%--<nav class="navbar navbar-expand-lg navbar-light bg-light">--%>
    <nav class="navbar navbar-expand-lg navbar navbar-light" style="background-color: #b0e6df;">

    <a class="navbar-brand" href="#">In~Harmony</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">

<%--            <li class="nav-item active">--%>
<%--                <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item active">--%>
<%--                <a class="nav-link" href="/about">About</a>--%>
<%--            </li>--%>
            <sec:authorize access="!isAuthenticated()">

            <li class="nav-item active">
                <a class="nav-link" href="/addstatus">Add Status</a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="${contextRoot}/login">Login</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="${contextRoot}/choose">register</a>
            <li class="nav-item">

            </sec:authorize>


        <sec:authorize access="isAuthenticated()">
    <li class="nav-inline">
        <a class="dropdown-item" href="${contextRoot}/patients">Patients</a>

    </li>
    <li class="nav-item">
        <a class="dropdown-item" href="${contextRoot}/addpatient">Add patient</a>
    </li>
    <li class="nav-item">
                <a class="dropdown-item" href="${contextRoot}/profile">Profile</a>
            </li>
    <li class="nav-item">
        <a class="dropdown-item" href="${contextRoot}/addpatient">Scheduler</a>
    </li>




<%--            <li>--%>
<%--                <a class="dropdown-item" href="${contextRoot}/patientcard">PatientsProfile</a>--%>

<%--            </li>--%>

    <li class="nav-item">
                <a class="dropdown-item" href="javascript:$('#logoutForm').submit();">Logout</a>
            </li>

<%--            <li class="nav-item dropdown">--%>
<%--                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
<%--                    Status--%>
<%--                </a>--%>
<%--                <div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--                    <a class="dropdown-item" href="${contextRoot}/addstatus">Add Status</a>--%>
<%--                    <a class="dropdown-item" href="${contextRoot}/viewstatus">Add status</a>--%>
<%--                    <div class="dropdown-divider"></div>--%>
<%--                    <a class="dropdown-item" href="#">Something else here</a>--%>
<%--                </div>--%>
<%--            </li>--%>
            </sec:authorize>

            <sec:authorize access="hasRole('ROLE_ADMIN')">
            <li class="nav-item">
                <a class="nav-link disabled" href="#">Disabled</a>
            </li>
            </sec:authorize>

        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>

<c:url var="logoutLink" value="/logout" />
<form id="logoutForm" method="post" action="/logout">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}" />
</form>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<div class="container">
<tiles:insertAttribute name="content" />
</div>

</body>
</html>