<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <jsp:include page="/WEB-INF/partials/head.jsp">
            <jsp:param name="title" value="Welcome to Adlister!" />
        </jsp:include>
        <link href="<c:url value='/css/style.css' />" rel="stylesheet"/>
    </head>

    <body>
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
        <div class="container">
            <div class="index-header">
                <h1 class="text-center">Welcome to the Adlister!</h1>
                <div class="index-loginRegister">
                    <a href="/login"><button type="button" class="btn btn-outline-primary">Login</button></a>
                    <a href="/register"><button type="button" class="btn btn-outline-success">Register</button></a>
                    <br>
                    <a href="/ads"><button type="button" class="btn btn-outline-info">View Ads</button></a>
                </div>
            </div>
        </div>
    </body>

</html>
