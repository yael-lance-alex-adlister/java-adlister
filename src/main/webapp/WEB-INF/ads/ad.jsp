<%--
  Created by IntelliJ IDEA.
  User: yaelBrown
  Date: 10/29/19
  Time: 15:10

  Used for displaying a single ad.
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

        <div class="container">
            <div class="ad-wrappper">
                <div class="row">
                    <h3 id="viewAdHeader" class="center-text">View Ad!</h3>
                </div>

                <div class="row">
                    <div class="ad-wrapper-titleLeft">
                        <h5><em>Title:</em></h5>
                        <h5><em>Username:</em></h5>
                    </div>

                    <div class="ad-wrapper-titleRight">
                        <h5>${ad.title}</h5>
                        <h5>${ad.username}</h5>
                    </div>
                </div>

                <div class="row">
                    <c:if test="${sessionScope.user.username == user.username}">
                        <%--            edit button added by kyndall--%>
                        <a href="/ads/edit?id=${ad.id}">
                            <button type="submit" class="btn btn primary" value="Edit Ad" onclick="return confirm('Would you like to edit this ad')"><i class="fas fa-edit"></i></button>
                        </a>

                        <%--            delete button added by kyndall--%>
                        <form action="/delete?postid=${ad.id}" method="POST" id="deleteForm">
                            <button type="submit" class="btn btn primary" onclick="return confirm('Are you sure you want to delete this add?')"><i class="fas fa-trash-alt"></i></button>
                        </form>
                    </c:if>
                </div>

                <div class="row">
                    <h6>${ad.description}</h6>
                </div>

                <p class="ad-nav"><a href="/ads"><< Go back and view all ads</a> | <a href="/ads/create">Create an ad</a></p>
            </div>

        </div>

    </body>
</html>
