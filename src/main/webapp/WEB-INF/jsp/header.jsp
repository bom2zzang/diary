<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<header>
<form action="../auth/login" method='post'>

<nav class="navbar navbar-fixed-top" style="background-color: #FF0080;">

<a class='title text-white navbar-brand' href='../diary/list2'>ENB DIARY</a>


<div class="float-right">

<c:choose>
    <c:when test="${sessionScope.loginUser != null}">
     <a href='../diary/${sessionScope.loginUser.m_no}' class="text-white">
     ${sessionScope.loginUser.name}</a>
        <a href="${contextPath}/app/auth/logout" 
           class='btn btn-outline-light btn-sm' style="background-color: #FF0080;">LOGOUT</a>
    </c:when>

    <c:otherwise>
    <!-- Button trigger modal -->
<button type="button" class="btn btn-outline-light btn-sm" 
 data-toggle="modal" 
data-target="#loginModal">
  LOGIN
</button>

    </c:otherwise>
</c:choose>
</div><br>




</nav>

<!-- Modal -->

<div class="modal fade" id="loginModal" tabindex="-1" 
    role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">LOGIN</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      

<div class='form-group row'>
    <label for='email' class='col-sm-2 col-form-label'>이메일</label>
    <div class='col-sm-10'>
    <input class='form-control' id='email' type='text' 
           name='email' value='${cookie.email.value}'>
    </div>
</div>

<div class='form-group row'>
    <label for='password' class='col-sm-2 col-form-label'>암호</label>
    <div class='col-sm-10'>
    <input class='form-control' id='password' type='password' name='password'>
    </div>
</div>

<div class='form-group row'>
    <div class="col-sm-2"></div>
    <div class="col-sm-10">
      <div class="form-check">
        <input type="checkbox" class="form-check-input"
               id="saveEmail" name="saveEmail">
        <label class="form-check-label" for="saveEmail"> 이메일 저장</label>
      </div>
    </div>
</div> 


      </div>
      <div class="modal-footer">
      <button class='btn btn-sm text-white'  style='background-color: #FF0080'>Login</button>
        <button formaction="../member/form"
                                    class='btn btn-sm text-white' 
                                    style='background-color: #FF0080'>Join</button>
      </div>
    </div>
  </div>
</div>
</form>
</header>





    