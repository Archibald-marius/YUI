<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="row">

    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">


        <div class="panel panel-default">

            <div class="panel-heading">
                <div class="panel-title">Add a patient</div>
            </div>


            <div class="panel-body">
                <form:form modelAttribute="patient">


                    <div class="input-group">
                        <form:input type="hidden" name="doctor" path="doctor" value="${doctor}"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="name" path="name" placeholder="Name"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="weeks" path="weeks" placeholder="Weeks"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="diagnosis" path="diagnosis" placeholder="Diagnosis"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <button type="submit" class="btn-primary pull-right">Register</button>
                    </div>

                </form:form>
            </div>
        </div>

    </div>



</div>