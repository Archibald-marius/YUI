<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<link rel="stylesheet" href="css/main.css" type="text/css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>




<c:url var="editPatientCard" value="/editPatientCard/${patient.id}" />
<c:url var="editLink" value="/yavka/${patient.id}"/>
<c:url var="visits" value="/showVisites/${patient.id}"/>
<c:url var="dialog" value="/chatview/${message}"/>
<c:url var="img" value="/img" />






<%--    <div class="col-md-10 col-md-offset-1 col-sm-8 col-sm-offset-2">--%>



<%--                        <c:out value="${patientName}"/>--%>
<%--                        <c:out value="${patientId}"/>--%>
    <div class="container">
        <form>
        <table class="patients">

            <tr>
                <th class="fir">Имя</th>
                <th class="sec">  <c:out value="${patient.name}"/>
                </th>
                <th></th>
                <th></th>

                <th style="padding-left: 100px"> <c:if test="${patient.mail != null}">
                <c:if test="${message != null}">
                    <button  formaction="${dialog}">
                        <img src="${img}/2.png" width="30" height="30"/>
                        Сообщение
                    </button>
                </c:if>

                    <c:if test="${message == null}">
                        <button disabled formaction="${dialog}">
                            <img src="${img}/2.png" width="30" height="30"/>
                            Сообщение
                        </button>
                        <br>
                        <span style="font-size: 12px">Пользователь по Указаному<br> email не найден</span>
                    </c:if>
                </th>
                </c:if>
                <c:if test="${patient.mail = null}">
                    <button disabled class="btn-pat" formaction="${dialog}">Написать</button></th>
                </c:if>
            </tr>
            <tr>
                <th class="fir">Адрес</th>
                <th class="sec">    <c:out value="${patient.address}"/>
                </th>
            </tr>
            <tr>
                <th class="fir">Место работы</th>
                <th class="sec"> <c:out value="${patient.work}"/></th>
            </tr>
            <tr>
                <th class="fir">Диагноз</th>
                <th class="sec">        <c:out value="${patient.diagnosis}"/>
                </th>
            </tr>

<c:if test="${gyn == true}">

            <tr>
                <th class="fir">Беременность</th>
                <th class="sec">         <c:out value="${patient.pregnancy}"/>
                </th>
            </tr>
            <tr>
                <th class="fir">Роды</th>
                <th class="sec">         <c:out value="${patient.labour}"/>
                </th>
            </tr>

</c:if>

            <tr>
                <th class="fir">Заметки</th>
                <th class="sec">  <c:out value="${patient.notes}"/>
                </th>
            </tr>
            <tr>
                <th class="fir">Email</th>
                <th class="sec"> Скрытая информация<c:out value="${patient.mail}"/>
                </th>
            </tr>
        </table>
            <br>
            <div class="container">
                <button class="btn-pat" formaction="${editLink}">Зарегистровать новую явку</button>
                <button class="btn-pat" formaction="${editPatientCard}">Изменить данные пациента</button>
                <button class="btn-pat" formaction="${visits}">Смотреть консультации</button>


            </div>



        </form>
        <c:if test="${ap == true}">

        <div style="float: left;">
            <div id="chart_div"></div>

        </div>
        </c:if>
        <c:if test="${gyn == true}">

        <div style="float: left;">
            <div id="chart_div_bpp"></div>

        </div>
        </c:if>

    <c:if test="${gyn == true}">
        <div style="float: left;">
            <div id="chart_div_mass"></div>

        </div>
        </c:if>



        <br>


<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
    // Load the Visualization API and the piechart package.
    google.load('visualization', '1.0', {
        'packages' : [ 'corechart' ]
    });
    // Set a callback to run when the Google Visualization API is loaded.
    google.setOnLoadCallback(drawChart);
    google.setOnLoadCallback(drawSecondChart);
    google.setOnLoadCallback(drawThirdChart);
    // Callback that creates and populates a data table,
    // instantiates the pie chart, passes in the data and
    // draws it.
    function drawChart() {
        // Create the data table.
        var data = google.visualization.arrayToDataTable([
            ['Давление', 'САТ', 'ДАТ'],
            <c:forEach items="${ares}" var="entry">
            [ '${entry.key}', ${entry.value[0]}, ${entry.value[1]}],
            </c:forEach>
        ]);
        // Set chart options
        var options = {
            'title' : 'Контроль артериального давления',
            is3D : true,
            pieSliceText: 'label',
            tooltip :  {showColorCode: true},
            'width' : 1000,
            'height' : 500,
            backgroundColor: '#ced4da',
            hAxis:{
                direction:-1,
                slantedText:true,
                slantedAngle:90
            },

        };
        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
    }

    function drawSecondChart() {
        // Create the data table.
        var data = google.visualization.arrayToDataTable([
            ['ЧСС плода', 'ЧСС плода'],
            <c:forEach items="${bpp}" var="entry">
            [ '${entry.key}', ${entry.value}],
            </c:forEach>
        ]);
        // Set chart options
        var options = {
            'title' : 'Частота серцебиения плода',
            is3D : true,
            pieSliceText: 'label',
            tooltip :  {showColorCode: true},
            'width' : 1000,
            'height' : 500,
            backgroundColor: '#ced4da',
            hAxis:{
                direction:-1,
                slantedText:true,
                slantedAngle:90
            },

        };
        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.LineChart(document.getElementById('chart_div_bpp'));
        chart.draw(data, options);
    }

    function drawThirdChart() {
        // Create the data table.
        var data = google.visualization.arrayToDataTable([
            ['Вес', 'Вес'],
            <c:forEach items="${mass}" var="entry">
            [ '${entry.key}', ${entry.value}],
            </c:forEach>
        ]);
        // Set chart options
        var options = {
            'title' : 'Динамика веса',
            is3D : true,
            pieSliceText: 'label',
            tooltip :  {showColorCode: true},
            'width' : 1000,
            'height' : 500,
            backgroundColor: '#ced4da',
            hAxis:{
                direction:-1,
                slantedText:true,
                slantedAngle:90
            },

        };
        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.LineChart(document.getElementById('chart_div_mass'));
        chart.draw(data, options);
    }
</script>