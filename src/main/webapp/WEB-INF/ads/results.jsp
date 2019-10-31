<%--
  Created by IntelliJ IDEA.
  User: yaelBrown
  Date: 10/29/19
  Time: 15:10
  To change this template use File | Settings | File Templates.

  Used for displaying results of search.
--%>
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

        <div class="results-wrapper">

            <h3>Here Are all the ads that you searched for!</h3>
            <div class="results-header">
                <div class="adsIdx-tableHead-left">
                    <p><a href="/profile">View Your Ads</a> | <a href="/ads/create"><i class="far fa-plus-square"></i></a></p>
                </div>
                <div class="adsIdx-tableHead-right">
                    <form method="POST" action="/search">
                        <input type="text" id="search" name="search" size=40 placeholder="search for ads">
                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>


            <table class="table table-hover table-striped ads-table">
                <thead>
                <tr>
                    <th scope="col">id #</th>
                    <th scope="col">Username</th>
                    <th scope="col">Title</th>
                    <th scope="col">Description</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="ad" items="${ads}">
                    <tr>
                        <th scope="row">${ad.id}</th>
                        <td><p>${ad.username}</p></td>
                        <td><p><a href="/ads/?ad_id=${ad.id}">${ad.title}</a></p></td>
                        <td><p class="description"><em>${ad.description}</em></p></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

    </body>
</html>