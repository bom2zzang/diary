<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<header>
<form action="../auth/login" method='post'>
<nav class="navbar fixed-top navbar-light bg-light">

<a class='navbar-brand' href='../diary/list2'>
  <img src='${contextPath}/images/bootstrap-solid.svg' width='30' height='30' class='d-inline-block align-top' alt=''>
 DIARY
</a>



<c:choose>
    <c:when test="${sessionScope.loginUser != null}">
        ${sessionScope.loginUser.name}
        <a href="${contextPath}/app/auth/logout" 
           class='btn btn-light btn-sm'>로그아웃</a>
    </c:when>

    <c:otherwise>
       <a href="${contextPath}/app/auth/login" 
           class='btn btn-primary btn-sm'>로그인</a>
    </c:otherwise>
</c:choose>


</nav>

</form>
</header>





    