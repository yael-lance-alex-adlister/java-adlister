<%--
  Created by IntelliJ IDEA.
  User: kyndallsims
  Date: 2019-10-30
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <jsp:include page="/WEB-INF/partials/head.jsp">
            <jsp:param name="title" value="AdLister - View Single Ad" />
        </jsp:include>
        <link href="<c:url value='/css/style.css' />" rel="stylesheet"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
                <h1 style="color: green;">Your add was deleted!</h1>
                <a href="/profile">Go back to profile</a>
                <a href="/home">Go back to home page</a>
            </jsp:include>
    </body>
</html>