<%--
  Created by IntelliJ IDEA.
  User: kyndallsims
  Date: 2019-10-31
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <jsp:include page="/WEB-INF/partials/head.jsp">
            <jsp:param name="title" value="AdLister - Edit Single Ad" />
        </jsp:include>
        <link href="<c:url value='/css/style.css' />" rel="stylesheet"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
        <div class="container">

            <div class="edit-wrapper">
                <h3 class="text-center">Edit an Ad</h3>
                <form action="/ads/edit" method="post" id="createForm">
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input id="title" name="title" class="form-control" type="text" value="${ad.title}" required>
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea id="description" name="description" class="form-control" type="text" required>${ad.description}</textarea>
                    </div>
                    <div class="form-group">
                        <input name="id" type="hidden" value="${ad.id}">
                        <input id="username" type="text" name="username" value="${sessionScope.loggedInUsername}" style="display: none;">
                    </div>
                    <button type="submit" value="" class="btn btn-block btn-primary"><i class="far fa-save"></i></button>
                </form>

                <p class="edit-nav"><a href="/ads/?ad_id=${ad.id}"><<  Go back to this ad's listing</a> | <a href="/ads">View all ads</a></p>
            </div>

        </div>
    </body>
</html>
