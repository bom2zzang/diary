<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<!-- 
<div class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Save changes</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
 -->

<title>다이어리 내용</title>
<link rel='stylesheet'
	href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<body>




	<div class='container'>


		<h1>다이어리 내용</h1>

		<c:if test="${not empty diary}">
			<form action='../update' method='post' enctype='multipart/form-data'>
			
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
						<a href='../delete?no=${diary.no}' class='btn btn-sm' style="background-color: #FF0080;">삭제</a>
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
