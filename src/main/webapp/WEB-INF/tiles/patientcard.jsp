<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet" href="css/main.css" type="text/css" />

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
                <th class="sec">         <c:out value="${patient.name}"/>
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
                        <span style="font-size: 12px">Пользователь не найден</span>
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
                <th class="fir"> Дата Рождения</th>
                <th class="sec">        <c:out value="${patient.birsd}"/>
                </th>
            </tr>

<c:if test="${gyn == true}">

<tr>
                <th class="fir">Неделя беременности</th>
                <th class="sec">         <c:out value="${patient.weeks}"/>
                </th>
            </tr>
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
                <th class="fir">Последний визит</th>
                <th>

                </th>
            </tr>
            <tr>
                <th class="fir">Email</th>
                <th class="sec"> <c:out value="${patient.mail}"/>
                </th>
            </tr>
        </table>
            <div class="container">
                <button class="btn-pat" formaction="${editLink}">Зарегистровать новую явку</button>
                <button class="btn-pat" formaction="${editPatientCard}">Изменить данные пациента</button>
                <button class="btn-pat" formaction="${visits}">Смотреть консультации</button>


            </div>



        </form>
        <br>

<c:if test="${ap == true}">
<div id="press_chart" style="width: 900px; height: 500px"></div>
</c:if>


<c:if test="${bb == true}">
    <div id="beat_chart" style="width: 900px; height: 500px"></div>
</c:if>


<c:if test="${cir == true}">
        <div id="param_chart" style="width: 900px; height: 500px"></div>
</c:if>







    <%--    </div>--%>









<%--        <div class="profile-about-edit">--%>
<%--            <a href="${editProfileAbout}">edit</a>--%>
<%--        </div>--%>





</div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawPressureChart);
    google.charts.setOnLoadCallback(drawBeatChart);
    google.charts.setOnLoadCallback(drawParamChart);



    function drawPressureChart() {
        var data = google.visualization.arrayToDataTable([
            ['Year', 'Sales'],
            <c:forEach items="${data}" var="entry">
            [ '${entry.normal_date}', ${entry.pulse} ],
            </c:forEach>
        ]);


        var options = {
            title: 'Артериальное давление',
            curveType: 'function',
            legend: { position: 'bottom' },
            backgroundColor: '#6dbfb0',
            vAxis: {
                gridlines: {
                    count: 0
                }
            }
        };

        var chart = new google.visualization.LineChart(document.getElementById('press_chart'));

        chart.draw(data, options);

    }
    function drawBeatChart() {
        var data = google.visualization.arrayToDataTable([
            ['Year', 'Sales'],
            <c:forEach items="${data}" var="entry">
            [ '${entry.normal_date}', ${entry.baby_beat} ],
            </c:forEach>
        ]);


        var options = {
            title: 'КТГ',
            curveType: 'function',
            legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('beat_chart'));

        chart.draw(data, options);

    }
    function drawParamChart() {
        var data = google.visualization.arrayToDataTable([
            ['Year', 'Sales'],
            <c:forEach items="${data}" var="entry">
            [ '${entry.normal_date}', ${entry.mass} ],
            </c:forEach>
        ]);


        var options = {
            title: 'Вес',
            curveType: 'function',
            legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('param_chart'));

        chart.draw(data, options);

    }
</script>