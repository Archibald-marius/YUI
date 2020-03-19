<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="search" value="/search"/>

<div class="row">

    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="homepage-status">
            ${statusUpdate.text}
        </div>
    </div>

</div>

<div class="row">

    <div class="col-md-8 col-md-offset-3 col-sm-8 col-sm-offset-2">

        <form action="${search}" method="POST">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}" />

            <div class = "input-group">
                <input type="text" class="form-control" name="s" placeholder="name">

                <span class="input-group-btn">
                    <button id="search-button" class="btn btn-primary" type="submit">
                        Find patient
                    </button>

                </span>


            </div>

        </form>
        </div>
    </div>

</div>