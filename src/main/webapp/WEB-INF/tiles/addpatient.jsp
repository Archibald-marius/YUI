<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<%--<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">--%>
<%--<link rel="stylesheet" href="/resources/demos/style.css">--%>
<%--<script src="https://code.jquery.com/jquery-1.12.4.js"></script>--%>
<%--<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>--%>
<%--<script>--%>
<%--    $( function() {--%>
<%--        $("#datepicker").datepicker({ dateFormat: "dd/mm/yy" });--%>

<%--    });--%>
<%--</script>--%>
<!-- Include jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.3/jquery-ui.min.js"></script>


<%--&lt;%&ndash;<!-- Include Date Range Picker -->&ndash;%&gt;--%>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
    $(document).ready(function(){
        var date_input= $("#datepicker").datepicker({ dateFormat: "dd/mm/yy" }); //our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            dateFormat: "YY-MM-DD",
            container: container,
            todayHighlight: true,
            autoclose: true,
        })
    })
</script>




<%--<div class="row">--%>

<%--    <div class="col-md-8 col-md-offset-2">--%>


<%--        <div class="panel panel-default">--%>

<%--            <div class="panel-heading">--%>
<%--                <div class="panel-title" style="color: #6c757d;">Добавить пациента</div>--%>
<%--            </div>--%>
<%--            <br>--%>


<%--            <div class="panel-body">--%>
<%--                <form:form modelAttribute="patient">--%>


<%--                    <div class="input-group">--%>
<%--                        <form:input type="hidden" name="doctor" path="doctor" value="${doctor}"--%>
<%--                                    class="form-control" />--%>
<%--                    </div>--%>
<%--                    <table class="regist" style="font-size: 20px; color: #6c757d;">--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                Имя--%>

<%--                            </td>--%>

<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <form:input path="name" cssStyle="width: 300px"></form:input>--%>

<%--                            </td>--%>

<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                Адрес--%>

<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <form:textarea path="address" cssStyle="width: 300px;"></form:textarea>--%>

<%--                            </td>--%>
<%--                        </tr> <tr>--%>
<%--                        <td>--%>
<%--                            Работа--%>

<%--                        </td>--%>
<%--                    </tr>--%>
<%--                        <tr>--%>
<%--                        <td>--%>
<%--                            <form:textarea path="work" cssStyle="width: 300px;"></form:textarea>--%>
<%--                        </td>--%>
<%--                    </tr> <tr>--%>
<%--                        <td>--%>
<%--                            Диагноз--%>

<%--                        </td>--%>
<%--                    </tr>--%>
<%--                        <tr>--%>
<%--                        <td>--%>
<%--                            <form:textarea path="diagnosis" cssStyle="width: 300px;"></form:textarea>--%>

<%--                        </td>--%>
<%--                    </tr> <tr>--%>
<%--                        <td>--%>
<%--                            Почта--%>

<%--                        </td>--%>
<%--                    </tr>--%>
<%--                        <tr>--%>
<%--                        <td>--%>
<%--                            <form:input path="mail" cssStyle="width: 300px"></form:input>--%>

<%--                        </td>--%>
<%--                    </tr>--%>
<%--                        </tr> <tr>--%>

<%--                        <td>--%>
<%--                            <input class="btn-reg" type="submit" name="submit" style="width: 300px;" value="Зарегистрировать" />--%>

<%--                        </td>--%>
<%--                    </tr>--%>




<%--                    </table>--%>

<%--                    <c:if test="${zax == true}">--%>

<%--                    <div class="input-group">--%>
<%--                        <form:input name="pregnancy" path="pregnancy" placeholder="Беременность"--%>
<%--                                    class="form-control" />--%>
<%--                    </div>--%>


<%--                        <div class="input-group">--%>
<%--                            <br>--%>
<%--                            <br>--%>
<%--                        <form:input name="labour" path="labour" placeholder="Роды"--%>
<%--                                    class="form-control" />--%>
<%--                    </div>--%>

<%--</c:if>--%>




<%--                </form:form>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--    </div>--%>



<%--</div>--%>
<div class="reg">

    <span style="font-size: 28px; color: #6c757d;">Регистрация пациента</span><br>            <br>

    <form:form method="post" modelAttribute="patient" class="login-form">

        <form:input type="text" path="name" placeholder="Имя"
                    class="form-control" />
        <span class="input-group-btn" style="width:20px"></span>
        <br>
        <form:textarea type="text" path="address" placeholder="Адрес"
                    class="form-control" />
        <br>
        <form:input type="work" path="work" placeholder="Работа"
                    class="form-control" />
        <br>
        <form:input type="phone" path="phone" placeholder="Телефон"
                    class="form-control" />
        <br>
<%--        <form:input path="date_b" cssClass="date-picker" />--%>


        <%--        <form:input type="date_b" path="date_b" placeholder="Дата рождения"--%>
<%--                    class="form-control" />--%>
<%--        <br>--%>
<%--        <div class="bootstrap-iso">--%>
<%--            <div class="container-fluid">--%>
<%--                <div class="row">--%>
<%--                    <div class="col-md-6 col-sm-6 col-xs-12">--%>

                        <!-- Form code begins -->
<%--                        <form method="post">--%>
<%--                            <div class="form-group"> <!-- Date input -->--%>
<%--&lt;%&ndash;                                <label class="control-label" for="date">Date</label>&ndash;%&gt;--%>
<%--                                <form:input path="date_b" class="form-control" id="date"--%>
<%--                                            name="date" placeholder="MM/DD/YYY" type="text"/>--%>
<%--                            </div>--%>
<%--                            </form>--%>
<%--                        <input placeholder="Date" class="textbox-n" type="text" onfocus="(this.type='date')" onblur="(this.type='text')" id="date" />--%>
<%--                        <label for="dateofbirth">Date Of Birth</label>--%>
<%--                        <div class="form-group"> <!-- Submit button -->--%>
<%--                        <form:input path="date_b" class="form-control" type="date" name="dateofbirth"--%>
<%--                                    id="dateofbirth" cssStyle="width : 200px;"/>--%>
<%--                                <button class="btn btn-primary " name="submit" type="submit">Submit</button>--%>
<%--                            </div>--%>
                        <!-- Form code ends -->
        <span style="color: darkslategrey; float: right; font-size: 12px;">*dd/mm/yyyy</span>
                        <form:input path="date_b" class="form-control" type="text" id="datepicker" placeholder="Дата рождения" data-date-format="dd/mm/yyyy"/>
<br>

<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

        <form:textarea type="text" path="diagnosis" placeholder="Диагноз"
                    class="form-control" />
        <br>


        <form:input type="mail" path="mail" placeholder="Электронная почта"
                    class="form-control" />
        <br>
                            <c:if test="${zax == true}">
                                                        <form:input name="pregnancy" path="pregnancy" placeholder="Беременность"
                                                                    class="form-control" />
<br>
                                                        <form:input name="labour" path="labour" placeholder="Роды"
                                                                    class="form-control" />
                                <br>
                            </c:if>


        <button type="submit" class="btn-reg">Регистрация</button>



    </form:form>

</div>







<!-- Инициализация виджета "Bootstrap datetimepicker" -->
<%--<script>--%>
<%--    $(function () {--%>
<%--        // идентификатор элемента (например: #datetimepicker1), для которого необходимо инициализировать виджет Bootstrap DateTimePicker--%>
<%--        $('#datetimepicker1').datetimepicker();--%>
<%--    });--%>
<%--</script>--%>