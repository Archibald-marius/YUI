<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="search" value="/search"/>
<c:url var="img" value="/img" />

<c:if test="${ticket == 0}">
    <span style="font-size: 30px; color: darkslategray">
            Добро пожаловать в систему медицинского контроля <span style="color: cadetblue">InMedical!</span><br>
    </span>
    <br>
    <br>
    <br>

    <div class="row">

        <div class="col-md-10 col-md-offset-1 col-sm-8 col-sm-offset-2">

                        <div class="profile-about">
                            <br>
            <div class="profile-image">
                    <%--                <img src="${img}/8.png" width="300" height="300"/>--%>
                <img src="${img}/15.png" width="290" height="140" style="float: left; margin: 0px 0px 0px 0px;"/>


            </div>
            <div class="profile-text" style="font-size: 20px; font-family: 'Iowan Old Style';">
                <span style="font-size: 20px;">
                        --> Динамичекий мониторинг показателей здоровья пользователей.<br>
                </span>
                <br>
                <br>
                <br>



            </div>

        </div>
            <br>
            <br>
        <div class="profile-image">
                <%--                <img src="${img}/8.png" width="300" height="300"/>--%>
            <img src="${img}/12.png" width="180" height="140" style="float: left; margin: 0px 0px 0px 0px;"/>


        </div>
        <div class="profile-text" style="font-size: 20px; font-family: 'Iowan Old Style'">
                <span style="font-size: 20px;">
                         --> Интуитивно понятная систeма ведения учёта пациентов для медицинских работников.<br>
                </span>
            <br>
<br>
            <br>


        </div>
<br>
<br>
            <div class="profile-image">
                    <%--                <img src="${img}/8.png" width="300" height="300"/>--%>
                <img src="${img}/13.png" width="160" height="140" style="float: left; margin: 0px 0px 0px 0px;"/>


            </div>
            <div class="profile-text" style="font-size: 20px; font-family: 'Iowan Old Style'">
                <span style="font-size: 20px;">
                        --> Постоянная связь доктора и пациента.<br>
                </span>
                <br>



            </div>

    </div>

    </div>
    <footer class="page-footer font-small blue">

                    <!-- Copyright -->
                    <div class="footer-copyright text-center py-3"><br>
                        <br>
    <%--&lt;%&ndash;                    © 2020 Copyright:&ndash;%&gt;--%>
    <%--                    <br>--%>
                        Канал для связи:
                        <br>
                        <a href="">inmedical.org@gmail.com</a>
<%--                        <br>--%>
<%--                        © 2020--%>

                    <%--                </div>--%>
    <%--                <!-- Copyright -->--%>

                </footer>

    </c:if>

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
        <c:if test="${ask_param == true}">
                <span style="font-size: 24px; color: #343a40; font-family: STSong">Здесь будет отображатся динамика Ваших показателей.<br>
                Для записи параметров перейдите на вкладку <a href="/control">Контроль состояния</a>.<br>
                    Изменить выбраные показатели можно во вкладке <a href="/profile">Мой профиль</a>.<br>
                </span>
        </c:if>
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
                    backgroundColor: 'mintcream',
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
                    backgroundColor: 'mintcream',
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
                    backgroundColor: 'mintcream',
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
                    backgroundColor: 'mintcream',
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

