<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 01.04.2020
  Time: 12:45 AM
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
                <div class="panel-title">Control</div>
            </div>


            <div class="panel-body">
                <form:form modelAttribute="control">




                    <div class="input-group">
                        <form:input name="SAT" path="SAT" placeholder="SAT"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="DAT" path="DAT" placeholder="DAT"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="pulse" path="pulse" placeholder="pulse"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="temperature" path="temperature" placeholder="temperature"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="glucose" path="glucose" placeholder="glucose"
                                    class="form-control" />
                    </div>

                    <div class="input-group">
                        <form:input name="baby" path="baby" placeholder="baby"
                                    class="form-control" />
                    </div>



                    <div class="input-group">
                        <button type="submit" class="btn-primary pull-right">Записать</button>
                    </div>

                </form:form>
            </div>
        </div>

    </div>



</div>
