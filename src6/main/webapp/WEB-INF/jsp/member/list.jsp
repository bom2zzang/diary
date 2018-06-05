<%@page import="anna.diary.domain.Member"%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<title>회원관리</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<body>
<jsp:include page="../header.jsp"/>


<div class='container'>


<h1>회원 목록</h1>


<table class='table table-hover'>
<thead>
<tr>
<th>번호</th><th>이름</th><th>이메일</th>
</tr>
</thead>
<tbody>

<c:forEach items="${list}" var="member">

        <tr>
        <td>${member.m_no}</td>
        <td><a href='${member.m_no}'>${member.name}</a></td>
        <td>${member.email}</td>
        </tr>
</c:forEach>

</tbody>
</table>

</div>

<jsp:include page="../jslib.jsp"/>


</body>
</html>
    