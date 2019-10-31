<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <h3><a href="/ads">View Ads</a></h3>

    <c:forEach var="ad" items="${ads}">
        <div>
            <p><strong>Title</strong>: ${ad.title}</p>
            <p><strong>Description</strong>: ${ad.description}</p>
        </div>
    </c:forEach>
</div>

</body>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
</html>
