<%--
  Created by IntelliJ IDEA.
  User: vysotskyia
  Date: 24.03.2020
  Time: 8:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
    <script>
        var csrfTokenName = $("meta[name='_csrf_header']").attributes("content");
        var csrfTokenValue = $("meta[name='_csrf_']").attributes("content");
        console.log("CSRF name", csrfTokenName);
        console.log("CSRF value", csrfTokenValue);

    </script>

</sec:authorize>
