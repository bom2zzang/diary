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
<div class='container'>


<h1>회원 상세 정보</h1>

<c:if test="${not empty member}">
        <form action='update' method='post'>
        <div class='form-group row'>
        <label for='m_no' class='col-sm-2 col-form-label'>번호</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='m_no' type='number' 
                name='m_no' value='${member.m_no}'>
        </div>
        </div>
        <div class='form-group row'>
        <label for='name' class='col-sm-2 col-form-label'>이름</label>
        <div class='col-sm-10'>
        <input class='form-control' id='name' type='text' 
                name='name' value='${member.name}'>
        </div>
        </div>
        <div class='form-group row'>
        <label for='email' class='col-sm-2 col-form-label'>이메일</label>
        <div class='col-sm-10'>
        <input class='form-control' id='email' type='email' 
                name='email' value='${member.email}'>
        </div>
        </div>
        <div class='form-group row'>
        <label for='password' class='col-sm-2 col-form-label'>암호</label>
        <div class='col-sm-10'>
        <input class='form-control' id='password' type='password' name='password'>
        </div>
        </div>
        <div class='form-group row'>
        <div class='col-sm-10'>
        <button class='btn btn-primary btn-sm'>변경</button>
        <a href='delete?m_no=${member.m_no}' class='btn btn-primary btn-sm'>삭제</a>
        </div>
        </div>
        </form>
</c:if>
<c:if test="${empty member}">
        <p>'${param.m_no}'번 회원 정보가 없습니다.</p>
</c:if>

</div>


</body>
</html>
    