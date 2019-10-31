<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav>
    <div class="container-fluid">
        <div class="nav-wrapper">
            <h2></h2>
            <a href="/index.jsp" class="text-center"><img src="../../img/adlisterLogo.png" id="nav-adlisterLogo"></a>

            <ul class="nav-navlinks">
                <c:choose>
                    <c:when test = "${sessionScope.userId != null}">
                        <li><p><a href="/profile"><i class="fas fa-user"></i></a></p></li>
                        <li><p><a href="/logout"><i class="fas fa-sign-out-alt"></i></a></p></li>
                    </c:when>
                    <c:when test = "${sessionScope.userId == null}">
                        <li><p><a href="/login"><i class="fas fa-sign-in-alt"></i></a></p></li>
                        <li><p><a href="/register"><i class="fas fa-user-plus"></i></a></p></li>
                    </c:when>
                </c:choose>
            </ul>
        </div>
    </div>
</nav>
