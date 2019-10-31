<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="AdLister - Login" />
    </jsp:include>
    <link href="<c:url value='/css/style.css' />" rel="stylesheet"/>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <div class="login-wrapper">
            <h3 class="text-center">Login to AdLister !</h3>
            <form action="/login" method="POST" id="login-form">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input id="username" name="username" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" name="password" class="form-control" type="password">
                </div>
                <input type="submit" class="btn btn-primary btn-block" value="Log In" id="submit">
                <p class="login-nav"><a href="/index.jsp"><< Go back</a> | <a href="/register">Register</a></p>
            </form>
        </div>

    </div>
</body>
</html>
