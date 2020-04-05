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
<span style="font-size: 34px; color: #6c757d;">Поиск пациента</span>
        <br>
        <br>
        <form action="${search}" method="POST">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}" />

                <input type="text" class="form-control" name="s" placeholder="Фамилия/Имя пациента">
            <br>
                    <button id="search-button" class="btn btn-primary" style="width: 150px; background-color: cadetblue; font-size: 20px;" type="submit">
                        Поиск
                    </button>

                </span>


        </form>
        </div>
    </div>
</c:if>

<c:if test="${ticket == 2}">

    <c:if test="${showPress == true}">
    <div style="float: left;">
        <div id="chart_div"></div>
    </c:if>

    </div>
    <c:if test="${showPls == true}">

    <div style="float: left;">
        <div id="chart_div_pls"></div>

    </div>
    </c:if>

    <c:if test="${showGluc == true}">

        <div style="float: left;">
            <div id="chart_div_glu"></div>

        </div>
    </c:if>

    <c:if test="${showTemper == true}">

        <div style="float: left;">
            <div id="chart_div_tmp"></div>

        </div>
    </c:if>


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
        google.setOnLoadCallback(drawForthChart);

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
                ['Пульс', 'Пульс'],
                <c:forEach items="${pls}" var="entry">
                [ '${entry.key}', ${entry.value}],
                </c:forEach>
            ]);
            // Set chart options
            var options = {
                'title' : 'Пульс',
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
            var chart = new google.visualization.LineChart(document.getElementById('chart_div_pls'));
            chart.draw(data, options);
        }

        function drawThirdChart() {
            // Create the data table.
            var data = google.visualization.arrayToDataTable([
                ['Глюкоза', 'Глюкоза'],
                <c:forEach items="${glu}" var="entry">
                [ '${entry.key}', ${entry.value}],
                </c:forEach>
            ]);
            // Set chart options
            var options = {
                'title' : 'Динамика глюкозы',
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
            var chart = new google.visualization.LineChart(document.getElementById('chart_div_glu'));
            chart.draw(data, options);
        }

        function drawForthChart() {
            // Create the data table.
            var data = google.visualization.arrayToDataTable([
                ['Температура', 'Температура'],
                <c:forEach items="${tmp}" var="entry">
                [ '${entry.key}', ${entry.value}],
                </c:forEach>
            ]);
            // Set chart options
            var options = {
                'title' : 'Динамика температура',
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
            var chart = new google.visualization.LineChart(document.getElementById('chart_div_tmp'));
            chart.draw(data, options);
        }
    </script>
</c:if>

