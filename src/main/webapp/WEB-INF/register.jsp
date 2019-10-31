<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <jsp:include page="/WEB-INF/partials/head.jsp">
            <jsp:param name="title" value="AdLister - Register" />
        </jsp:include>
        <link href="<c:url value='/css/style.css' />" rel="stylesheet"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
        <div class="container">
            <div class="register-wrapper">
                <h3 class="text-center">Please fill in your information.</h3>
                <form action="/register" method="post" id="register-form">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input id="username" name="username" class="form-control" type="text" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input id="email" name="email" class="form-control" type="text" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input id="password" name="password" class="form-control" type="password" required>
                    </div>
                    <div class="form-group">
                        <label for="confirm_password">Confirm Password</label>
                        <input id="confirm_password" name="confirm_password" class="form-control" type="password" required>
                    </div>
                    <input type="submit" class="btn btn-primary btn-block" id="submit" onclick="verifyPws();">
                </form>
            </div>
        </div>

    <script>
        // confirm passwords match
        let pw = document.getElementById(password).value;
        let cpw = document.getElementById(confirm_password).value;

        addEventListener("click", (e) => {
            if (pw != cpw) {
                console.log("Passwords do not match!");
                e.preventDefault();
            }
        })
    </script>
    </body>
</html>
