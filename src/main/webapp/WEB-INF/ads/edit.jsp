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
    <title>Title</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Your Post"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<form action="/ads/edit" method="post">
    <input name="id" type="hidden" value="${ad.id}">
    <input name="title" id="title" type="text" value="${ad.title}">
    <textarea name="description" id="description" cols="30" rows="10">${ad.description}</textarea>
    <button>edit</button>
</form>
</body>
</html>
