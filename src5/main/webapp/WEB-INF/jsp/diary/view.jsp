<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

 

<title>다이어리 내용</title>
<link rel='stylesheet'
	href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<jsp:include page="../header.jsp"/>
<body>




	<div class='container'>


		<h1>다이어리 내용</h1>

		<c:if test="${not empty diary}">
			<form action='../diary/update' method='post' enctype='multipart/form-data'>
			
				<div class='form-group row'>
					<label for='no' class='col-sm-2 col-form-label'>번호</label>
					<div class='col-sm-10'>
						<input class='form-control' readonly id='no' type='number'
							name='no' value='${diary.no}'>
					</div>
				</div>
				<div class='form-group row'>
					<label for='title' class='col-sm-2 col-form-label'>제목</label>
					<div class='col-sm-10'>
						<input class='form-control' id='title' type='text' name='title'
							value='${diary.title}'>
					</div>
				</div>
				<div class='form-group row'>
					<label for='contents' class='col-sm-2 col-form-label'>내용</label>
					<div class='col-sm-10'>
						<input class='form-control' id= 'contents' type='text' name='contents'
							value='${diary.contents}'>
					</div>
				</div>
				
				<div class='form-group row'>
			<label for='photo' class='col-sm-2 col-form-label'></label>
			<div class='col-sm-10'>
			<img src="${contextPath}/download/${diary.photo}" height="350px"/>
			</div>
			</div>
			
			        <div class='form-group row'>
			        <label for='file' class='col-sm-2 col-form-label'>파일1</label>
			        <div class='col-sm-10'>
			        <input type="file" class="form-control-file" id="file" name="file">
			        </div>
        </div>
				

				<div class='form-group row'>
					<label for='date' class='col-sm-2 col-form-label'>작성일자</label>
					<div class='col-sm-10'>
						<input class='form-control' id='date' type='date'
							name='date' value='${diary.date}'>
					</div>
				</div>
				<div class='form-group row'>
					<div class='col-sm-10'>
						<button class='btn btn-sm' style="background-color: #FF0080;">변경</button>
						<a href='../diary/delete?no=${diary.no}' class='btn btn-sm'>삭제</a>
					</div>
				</div>
			</form>
		</c:if>
		<c:if test="${empty diary}">
			<p>'${param.no}'번 다이어리 정보가 없습니다.</p>
		</c:if>


	</div>

</body>
</html>
