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
    <style>
      #columns{
        column-width:350px;
        column-gap: 15px;
      }
      #columns figure{
        display: inline-block;
        border:1px solid rgba(0,0,0,0.2);
        margin:0;
        margin-bottom: 15px;
        padding:10px;
        box-shadow: 2px 2px 5px rgba(0,0,0,0.5);;
      }
      #columns figure img{
        width:100%;
      }
      #columns figure figcaption{
        border-top:1px solid rgba(0,0,0,0.2);
        padding:10px;
        margin-top:11px;
      }
    </style>
</head>
<jsp:include page="../header.jsp"/>
<body>
<div class='container'>


<h1>${diary.writer.name}의 page</h1>

    <div id="columns">
    <c:forEach items="${mypage}" var="diary">
      <figure>
      <img src="${contextPath}/download/${diary.photo}">
               <figcaption><a href='${diary.no}'>${diary.title}</a></figcaption>
      </figure>
      </c:forEach>
      
    </div>
     
<!-- 
    <c:forEach items="${list2}" var="diary">
      <figure>  
      <img src="${contextPath}/download/${diary.photo}">
               <figcaption><a href='${diary.no}'>${diary.title}</a></figcaption>
      </figure>
      </c:forEach>
      
 -->     
     


</div>


</body>
</html>
    