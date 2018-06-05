<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<title>Intro, HELLO</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>


<body>

<jsp:include page="../header.jsp"/>

<div class='container'>


<div id="carousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel" data-slide-to="0" class="active"></li>
    <li data-target="#carousel" data-slide-to="1"></li>
    <li data-target="#carousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <img class="d-block w-100" 
               src="//lbstatic.nu/assets/cover-photos/jana-wind-705e119f667546bff1e78ce73b37b76e.jpg" width="100%" alt="First slide">
               <div class="carousel-caption">
               </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" 
               src="//lbstatic.nu/assets/cover-photos/ashley-joncas-ca22c56a503956d8beb46ff804bb10d7.jpg" width="100%" alt="Second slide">
               <div class="carousel-caption">
               </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" 
               src="//lbstatic.nu/assets/cover-photos/maddi-mcfarland-3d87c16fba91bc958daaf56e821a24af.jpg" width="100%" alt="Third slide">
               <div class="carousel-caption">
               </div>
    </div>
  </div>
  <!--  controls -->
  <a class="left-carousel-control" href="#carousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right-carousel-control" href="#carousel" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
 </div>

</body>
<jsp:include page="../jslib.jsp"/>
</html>