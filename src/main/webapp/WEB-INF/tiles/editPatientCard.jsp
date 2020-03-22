<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 22.03.2020
  Time: 6:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--<c:url var="patientEditCard" value="/editPatientCard/${patients.id}"/>--%>


<div class="row">

    <div class="col-md-8 col-md-offset-2">


        <div class="panel panel-default">

            <div class="panel-heading">
                <div class="panel-title">Edit</div>
            </div>

            <div class="panel-body">

                <form:form modelAttribute="patients">




                    <div class="form-group">
                        <form:textarea path="name" rows="10" cols="50"></form:textarea>
                    </div>

                    <input type="submit" name="submit" value="Add Status" />
                </form:form>

            </div>


        </div>



    </div>



</div>
