<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="row">

    <div class="col-md-8 col-md-offset-2">


        <div class="panel panel-default">

            <div class="panel-heading">
                <div class="panel-title">Edit Status Update</div>
            </div>

            <div class="panel-body">

                <form:form modelAttribute="statusUpdate">

                    <form:input type="hidden" path="id"/>
                    <form:input type="hidden" path="added"/>


                    <div>
                        <form:errors path="text"/>
                        <form:errors path="id"/>
                        <form:errors path="added"/>

                    </div>
                    <div class="form-group">
                        <form:textarea path="text" name="text" rows="10" cols="50"></form:textarea>
                    </div>

                    <input type="submit" name="submit" value="Add Status" />
                </form:form>

            </div>


        </div>



    </div>



</div>

<script src='//cdn.tinymce.com/4/tinymce.min.js'></script>
<script>
    tinymce.init({
        selector : 'textarea',
        plugins : "link"
    });
</script>