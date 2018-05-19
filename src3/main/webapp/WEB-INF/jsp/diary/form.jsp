<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<title>다이어리 작성</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<body>

<div class='container'>
    <h1>다이어리 작성</h1>
        
        <form action="add" method='post' enctype='multipart/form-data'>
        
            <div class='form-group row'>
                <div class='col-sm-12'>
                    <input required class='form-control' id='title' type='text' name='title'
                            placeholder="제목">
                </div>
            </div>
            <div class='form-group row'>
                <div class='col-sm-12'>
                    <input required class='form-control' id='contents' type='text' name='contents'
                            placeholder="내용">
                </div>
            </div>  
            
			            <div class='form-group row'>
			<label for='file' class='col-sm-2 col-form-label'>사진</label>
			<div class='col-sm-10'>
			<input type="file" class="form-control-file" id="file" name="file">
			</div>
			</div>

            
            <div class='form-group row'>
                <div class='col-sm-12'>
                    <input class='form-control' id='date' type="date" name='date'
                            placeholder="작성일">
                </div>
            </div>
             


         
                
                <div class='form-group row'>
                <div class='col-sm-10'>
                    <button class='btn btn-primary btn-sm'>히히히</button>
                    <button class='btn btn-primary btn-sm'>작성하기</button>
                </div>
            </div>
        </form>
</div>

</body>
</html>