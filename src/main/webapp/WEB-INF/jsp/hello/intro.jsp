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


<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img 
               src="//lbstatic.nu/assets/cover-photos/jana-wind-705e119f667546bff1e78ce73b37b76e.jpg" alt="1">
    </div>

    <div class="item">
      <img 
               src="//lbstatic.nu/assets/cover-photos/ashley-joncas-ca22c56a503956d8beb46ff804bb10d7.jpg" alt="2">
    </div>

    <div class="item">
      <img 
               src="//lbstatic.nu/assets/cover-photos/maddi-mcfarland-3d87c16fba91bc958daaf56e821a24af.jpg" alt="3">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</body>
<jsp:include page="../jslib.jsp"/>
</html>