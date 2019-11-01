<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <jsp:include page="/WEB-INF/partials/head.jsp">
            <jsp:param name="title" value="AdLister - Profile" />
        </jsp:include>
        <link href="<c:url value='/css/style.css' />" rel="stylesheet"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
        <div class="container">
            <div class="profile-wrapper">

                <h1><em>Welcome, ${sessionScope.user.username}!</em></h1>
                <p><a href="/ads">View Ads</a> | <a href="/ads/create"><i class="far fa-plus-square"></i></a></p>

                <table class="table table-hover table-striped ads-table">
                    <thead>
                    <tr>
                        <th scope="col">id #</th>
                        <th scope="col">Title</th>
                        <th scope="col">Description</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="ad" items="${ads}">
                        <tr>
                            <th scope="row">${ad.id}</th>
                            <td><p><a href="/ads/?ad_id=${ad.id}">${ad.title}</a></p></td>
                            <td><p class="description"><em>${ad.description}</em></p></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

            </div>
        </div>
    </body>
</html>
