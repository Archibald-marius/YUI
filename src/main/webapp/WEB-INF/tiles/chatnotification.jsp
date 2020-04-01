<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: vysotskyia--%>
<%--  Date: 24.03.2020--%>
<%--  Time: 8:44 PM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<%--<%@ taglib uri="http://www.springframework.org/security/tags"--%>
<%--           prefix="sec"%>--%>


<%--<sec:authorize access="isAuthenticated()">--%>

<%--    <c:url var="webSocketEndpoint" value="/chat" scope="request" />--%>
<%--    <c:url var="inboundDestination" value="/user/queue/${thisUserID}" />--%>

<%--    <script>--%>

<%--        var connectionManager = new ConnectionManager();--%>

<%--        var csrfTokenName = $("meta[name='_csrf_header']").attr("content");--%>
<%--        var csrfTokenValue = $("meta[name='_csrf']").attr("content");--%>

<%--        console.log("CSRF name", csrfTokenName);--%>
<%--        console.log("CSRF value", csrfTokenValue);--%>

<%--        var headers = [];--%>
<%--        headers[csrfTokenName] = csrfTokenValue;--%>

<%--        var wsocket = new SockJS("${webSocketEndpoint}");--%>
<%--        var client = Stomp.over(wsocket);--%>

<%--        client.connect(headers, function() {--%>
<%--            console.log("Established web socket connection");--%>

<%--            client.subscribe("${inboundDestination}", function(messageJson) {--%>
<%--                var message = JSON.parse(messageJson.body);--%>

<%--                alert(message.text);--%>
<%--            });--%>
<%--        });--%>


<%--    </script>--%>

<%--</sec:authorize>--%>

<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 24.03.2020
  Time: 8:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
           prefix="sec"%>


<sec:authorize access="isAuthenticated()">

    <c:url var="webSocketEndpoint" value="/chat" scope="request" />
    <c:url var="notificationQueue" value="/user/queue/newmessages" />
    <c:url var="notificationUrl" value="/messages?p=1" />

    <script>
        function alertUser(from, text) {
            if (!("Notification" in window)) {
                // Notifications not supported
                return;
            }
            else if (Notification.permission === "denied") {
                // User doesn't want notifications
                return;
            }
            else if (Notification.permission !== "granted") {
                Notification.requestPermission();
            }

            if (Notification.permission === "granted") {
                var notification = new Notification(from, { body: text });

                notification.onclick = function () {
                    window.location.href = "${notificationUrl}";
                }
            }
        }
        var connectionManager = new ConnectionManager("${webSocketEndpoint}");
        connectionManager.addSubscription("${notificationQueue}", function(
            messageJson) {
            var message = JSON.parse(messageJson.body);
            alertUser(message.from, message.text);
        });
    </script>

</sec:authorize>