<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
    <div class="col-md-12">

<%--        <div class="panel panel-default">--%>

<%--            <div class="panel panel-heading">--%>
                <br>
    <span style="font-size: 24px; color: #495057;">
                        <div>Чат с <c:out value="${chatWithUserName}" /></div>
    </span>
<%--            </div>--%>

            <div class="panel-body" style="font-size: 16px;">

                <div id="chat-message-view">


<%--                    <div id="chat-message-previous">--%>
<%--                        <a id="chat-older-messages" href="#">Посмотреть предыдущие сообщения</a>--%>
<%--                    </div>--%>

                    <div>
                        <a id="chat-older" href="/mail/${chatWithUserID}">
                        Архив сообщений</a>
                    </div>

                    <div id="chat-message-record"></div>


                    <div id="chat-message-send" class="reg" style="float: left;">

                        <textarea class="form-control" id="chat-message-text"></textarea>

                        <br>
                        <span class="input-group-btn">
							<button id="chat-send-button" class="btn-pat" type="button" style="color: black;">Отправить</button>

						</span>
                    </div>
                </div>

            </div>


        </div>

    </div>


</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tag-it/2.0/js/tag-it.js" crossorigin="anonymous"></script>
