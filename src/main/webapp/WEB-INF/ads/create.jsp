<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <jsp:include page="/WEB-INF/partials/head.jsp">
            <jsp:param name="title" value="AdLister - Register" />
        </jsp:include>
        <link href="<c:url value='/css/style.css' />" rel="stylesheet"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />

        <div class="container">

            <div class="create-wrapper">
                <h1 class="text-center">Create a new Ad</h1><p>

                <form action="/ads/create" method="post" id="createForm">
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input id="title" name="title" class="form-control" type="text" required>
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea id="description" name="description" class="form-control" type="text" required></textarea>
                    </div>
                    <div class="form-group">
                        <label for="username"></label>
                        <input id="username" type="text" name="username" value="${sessionScope.loggedInUsername}" style="display: none;">
                    </div>
                    <input type="submit" class="btn btn-block btn-primary">
                </form>

                <p class="create-nav"><a href="/ads"><< Go back to view all ads</a></p>

            </div>

        </div>
    </body>
</html>
