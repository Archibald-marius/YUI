<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 23.03.2020
  Time: 11:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="row">

    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">


        <div class="panel panel-default">

            <div class="panel-heading">
                <div class="panel-title">Yavka</div>
            </div>


            <div class="panel-body">
                <form:form modelAttribute="yavka">


                    <div class="input-group">
                        <form:input type="hidden" name="patient" path="patient" value="${patient}"
                                    class="form-control" />
                    </div>


                    <div class="input-group">
                        <form:input name="pulse" path="pulse" placeholder="pulse"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="press" path="press" placeholder="press"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="baby_beat" path="baby_beat" placeholder="baby_beat"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="mass" path="mass" placeholder="mass"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="ab_circ" path="ab_circ" placeholder="ab_circ"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="ab_hig" path="ab_hig" placeholder="ab_hig"
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
