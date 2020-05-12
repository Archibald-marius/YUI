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


<%--<div class="row">--%>

<%--    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">--%>


<%--        <div class="panel panel-default">--%>

<%--            <div class="panel-heading">--%>
<%--                <div class="panel-title" style="color: #6c757d;">Консультация ${yavka.normal_date}</div>--%>
<%--            </div>--%>

<%--<div class="panel-body">--%>
<%--&lt;%&ndash;            <div class="reg">&ndash;%&gt;--%>
<%--    <div style="">--%>
<%--                <form:form modelAttribute="yavka">--%>


<%--                    <div class="input-group">--%>
<%--                        <form:input type="hidden" name="patient" path="patient" value="${patient}"--%>
<%--                                    class="form-control" />--%>
<%--                    </div>--%>
<%--                    <div class="input-group">--%>
<%--                        <span style="color: #495057; float: left;">Жалобы</span>--%>
<%--                        <form:textarea name="complains" path="complains" placeholder="" cssStyle="height: 100px; width: 300px"--%>
<%--                                    class="form-control" />--%>
<%--                    </div>--%>

<%--                    <div class="input-group" style="display: flex; flex-direction: row; width: 270px">--%>
<%--                        <span style="color: #495057">Артериальное давление</span>--%>
<%--                        <form:input name="SAT" path="SAT" placeholder=""--%>
<%--                                    class="form-control"/>--%>
<%--                        <span style="font-size: 26px; color: #495057;"> / </span>--%>
<%--                        <form:input name="DAT" path="DAT" placeholder=""--%>
<%--                                    class="form-control" />--%>
<%--                    </div>--%>

<%--                    <div class="input-group" style="display: flex; flex-direction: row; width: 245px">--%>

<%--                    <table>--%>
<%--<tr>--%>
<%--    <td>--%>
<%--        <span style="color: #495057">Температура<br><span style="font-size: 14px">*в формате 36.6</span></span>--%>

<%--    </td>--%>
<%--    <td>--%>
<%--        <span style="color: #495057">Пульс</span>--%>

<%--    </td>--%>
<%--</tr>--%>

<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <form:input name="temperature" path="temperature" placeholder=""--%>
<%--                                            class="form-control"/>--%>
<%--                            </td>--%>
<%--                            <td>--%>
<%--                                <form:input name="pulse" path="pulse" placeholder=""--%>
<%--                                            class="form-control" />--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                    </table>--%>
<%--                    </div>--%>

<%--                    <div class="input-group">--%>
<%--                        <span style="color: #495057; float: left;">Результаты анализов</span>--%>
<%--                        <form:textarea name="Analysis" path="Analysis" placeholder="" cssStyle="height: 100px; width: 300px"--%>
<%--                                       class="form-control" />--%>
<%--                    </div>--%>
<%--                    <div class="input-group">--%>
<%--                        <span style="color: #495057; float: left;">Инструментальное обследование</span>--%>
<%--                        <form:textarea name="instrument" path="instrument" placeholder="" cssStyle="height: 100px; width: 300px"--%>
<%--                                       class="form-control" />--%>
<%--                    </div>--%>
<%--                    <div class="input-group">--%>
<%--                        <span style="color: #495057; float: left;">Диагноз</span>--%>
<%--                        <form:textarea name="diagnosis" path="diagnosis" placeholder="" cssStyle="height: 100px; width: 300px"--%>
<%--                                       class="form-control" />--%>
<%--                    </div>--%>
<%--                    <div class="input-group">--%>
<%--                        <span style="color: #495057; float: left;">Назначения</span>--%>
<%--                        <form:textarea name="presriptions" path="prescriptions" placeholder="" cssStyle="height: 100px; width: 300px"--%>
<%--                                       class="form-control" />--%>
<%--                    </div>--%>

<%--                    <c:if test="${zax == true}">--%>

<%--                    <span style="color: #6c757d; float: left; font-size: 24px">Акушерская панель</span>--%>
<%--                    <br>--%>
<%--                    <div class="input-group" style="display: flex; flex-direction: row; width: 350px">--%>

<%--                        <table>--%>
<%--                            <tr>--%>
<%--                                <td>--%>
<%--                                    <span style="color: #495057">ЧСС плода</span>--%>

<%--                                </td>--%>
<%--                                <td>--%>
<%--                                    <span style="color: #495057">Вес беременной<br><span style="font-size: 14px">*в формате 65.5</span></span>--%>

<%--                                </td>--%>
<%--                            </tr>--%>

<%--                            <tr>--%>
<%--                                <td>--%>
<%--                                    <form:input name="baby_beat" path="baby_beat" placeholder=""--%>
<%--                                                class="form-control"/>--%>
<%--                                </td>--%>
<%--                                <td>--%>
<%--                                    <form:input name="mass" path="mass" placeholder=""--%>
<%--                                                class="form-control" />--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                        </table>--%>
<%--                    </div>--%>


<%--                    <div class="input-group" style="display: flex; flex-direction: row; width: 420px">--%>

<%--                        <table>--%>
<%--                            <tr>--%>
<%--                                <td>--%>
<%--                                    <span style="color: #495057">Окружность живота</span>--%>

<%--                                </td>--%>
<%--                                <td>--%>
<%--                                    <span style="color: #495057">ВСДМ</span>--%>

<%--                                </td>--%>
<%--                            </tr>--%>

<%--                            <tr>--%>
<%--                                <td>--%>
<%--                                    <form:input name="ab_circ" path="ab_circ" placeholder=""--%>
<%--                                                class="form-control"/>--%>
<%--                                </td>--%>
<%--                                <td>--%>
<%--                                    <form:input name="ab_hig" path="ab_hig" placeholder=""--%>
<%--                                                class="form-control" />--%>
<%--                                </td>--%>
<%--                            </tr>--%>

<%--                        </table>--%>
<%--                    </div>--%>
<%--</c:if>--%>

<%--<br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>

<%--                    <div class="input-group"><br>--%>
<%--                        <button type="submit" class="btn-primary pull-right" style="font-size: 24px;--%>
<%--    width: 300px;--%>
<%--    color: #6c757d;--%>
<%--    height: 50px;--%>
<%--    border-radius: 12px;--%>
<%--    background-color: #b0e6df;">Записать</button>--%>
<%--                    </div>--%>

<%--                </form:form>--%>
<%--&lt;%&ndash;            </div>&ndash;%&gt;--%>
<%--    </div>--%>
<%--</div>--%>
<%--        </div>--%>

<%--    </div>--%>



<%--</div>--%>



<div class="reg">

    <span style="font-size: 24px; color: #6c757d;">Консультация ${yavka.normal_date}</span><br>

    <form:form method="post" modelAttribute="yavka" class="login-form">

        <div class="input-group">
            <form:input type="hidden" name="patient" path="patient" value="${patient}"
                        class="form-control" />
        </div>
        <div class="input-group">
            <span style="color: #495057; float: left;">Жалобы</span>
            <form:textarea name="complains" path="complains" placeholder="" cssStyle="height: 100px; width: 300px"
                           class="form-control" />
        </div>

        <div class="input-group" style="display: flex; flex-direction: row; width: 270px">
            <span style="color: #495057">Артериальное давление</span>
            <form:input name="SAT" path="SAT" placeholder=""
                        class="form-control"/>
            <span style="font-size: 26px; color: #495057;"> / </span>
            <form:input name="DAT" path="DAT" placeholder=""
                        class="form-control" />
        </div>

        <div class="input-group" style="display: flex; flex-direction: row; width: 245px">

            <table>
                <tr>
                    <td>
                        <span style="color: #495057">Температура<br><span style="font-size: 14px">*в формате 36.6</span></span>

                    </td>
                    <td>
                        <span style="color: #495057">Пульс</span>

                    </td>
                </tr>

                <tr>
                    <td>
                        <form:input name="temperature" path="temperature" placeholder=""
                                    class="form-control"/>
                    </td>
                    <td>
                        <form:input name="pulse" path="pulse" placeholder=""
                                    class="form-control" />
                    </td>
                </tr>
            </table>
        </div>

        <div class="input-group">
            <span style="color: #495057; float: left;">Результаты анализов</span>
            <form:textarea name="Analysis" path="Analysis" placeholder="" cssStyle="height: 100px; width: 300px"
                           class="form-control" />
        </div>
        <div class="input-group">
            <span style="color: #495057; float: left;">Инструментальное обследование</span>
            <form:textarea name="instrument" path="instrument" placeholder="" cssStyle="height: 100px; width: 300px"
                           class="form-control" />
        </div>
        <div class="input-group">
            <span style="color: #495057; float: left;">Диагноз</span>
            <form:textarea name="diagnosis" path="diagnosis" placeholder="" cssStyle="height: 100px; width: 300px"
                           class="form-control" />
        </div>
        <div class="input-group">
            <span style="color: #495057; float: left;">Назначения</span>
            <form:textarea name="presriptions" path="prescriptions" placeholder="" cssStyle="height: 100px; width: 300px"
                           class="form-control" />
        </div>

        <c:if test="${zax == true}">

            <span style="color: #6c757d; float: left; font-size: 24px">Акушерская панель</span>
            <br>
            <div class="input-group" style="display: flex; flex-direction: row; width: 350px">

                <table>
                    <tr>
                        <td>
                            <span style="color: #495057">ЧСС плода</span>

                        </td>
                        <td>
                            <span style="color: #495057">Вес беременной<br><span style="font-size: 14px">*в формате 65.5</span></span>

                        </td>
                    </tr>

                    <tr>
                        <td>
                            <form:input name="baby_beat" path="baby_beat" placeholder=""
                                        class="form-control"/>
                        </td>
                        <td>
                            <form:input name="mass" path="mass" placeholder=""
                                        class="form-control" />
                        </td>
                    </tr>
                </table>
            </div>


            <div class="input-group" style="display: flex; flex-direction: row; width: 420px">

                <table>
                    <tr>
                        <td>
                            <span style="color: #495057">Окружность живота</span>

                        </td>
                        <td>
                            <span style="color: #495057">ВСДМ</span>

                        </td>
                    </tr>

                    <tr>
                        <td>
                            <form:input name="ab_circ" path="ab_circ" placeholder=""
                                        class="form-control"/>
                        </td>
                        <td>
                            <form:input name="ab_hig" path="ab_hig" placeholder=""
                                        class="form-control" />
                        </td>
                    </tr>

                </table>
            </div>
        </c:if>

        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>

        <div class="input-group"><br>
            <button type="submit" class="btn-reg" style="font-size: 24px;
    width: 300px;
    float: left;
    color: black;
    height: 50px;
    border-radius: 12px;
    background-color: #b0e6df;">Записать</button>
        </div>

    </form:form>

</div>
