<%@page import="anna.diary.domain.Diary"%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<title>다이어리</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<jsp:include page="../header.jsp"/>
<body>
<div class='container'>


<h1>다이어리목록</h1>


<table class='table table-hover'>
<thead>
<tr>
<th>번호</th><th>사진<th>제목</th><th>작성자</th><th>작성일</th>
</tr>
</thead>
<tbody>

<c:forEach items="${list}" var="diary">
        <tr>
        <td>${diary.no}</td>
 <td><img class="thumbnail" src="${contextPath}/download/${diary.photo}"/></td>
  <td><a data-toggle="modal" href='${diary.no}'>${diary.title}</a></td>
      <!-- 
         <td><a data-toggle="modal" href="../diary/view/${diary.no}/#viewModal">${diary.title}</a></td>
       -->
         <td><a href='../diary/${diary.writer.email}'>${diary.writer.name}</a></td>
        <td>${diary.date}</td>
        </tr>
</c:forEach>



</tbody>
</table>



</div>


</body>
</html>
    