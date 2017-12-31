<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
	<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.ConnectionSQL"%>
<!DOCTYPE html >
<html lang="VI">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- để định dạng độ rộng màn hình để xử lí-->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    	<title>WEB HOC TAP ONL</title>
        <!--Tích hợp bộ CSS của Bootstrap-->
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/bootstrap-theme.css" rel="stylesheet" />
        <link href="home.css" rel="stylesheet" />
</head>


<body>
<div class="container">
         <nav class="navbar navbar-inverse navbar-fixed-top">
              <div class="container-fluid">
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>                        
                  </button>
                  <a class="navbar-brand" href="#">HOCTAP.PRO.VN</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                  <ul class="nav navbar-nav">
                    <li class="active"><a href="file:///E:/PMK_HOCTAP/LapTrinhWeb/home.html"><span class="glyphicon glyphicon-send" aria-hidden="true"></span>Contact Us</a></li>
                     <li class="active"><a href="file:///E:/PMK_HOCTAP/LapTrinhWeb/home.html"><span class="glyphicon glyphicon-flag" aria-hidden="true"></span>Use Guide</a></li>
                    
                  </ul>
            
                  <ul class="nav navbar-nav navbar-right">
                    
                    <li class="active"><a href="login"><span class="glyphicon glyphicon-log-out"></span> Login</a></li>
                  </ul>
                </div>
              </div>
            </nav>
                 
            <div class="row">
            	<div class="col-lg-10 col-lg-offset-1">
                <!-- SlideShow -->
                    <div id="home-slideshow" class="carousel slide" data-ride="carousel">
                 		 <!-- Indicators -->
                  	  <ol class="carousel-indicators">
                        <li data-target="#home-slideshow" data-slide-to="0" class="active"></li>
                        <li data-target="#home-slideshow" data-slide-to="1"></li>
                        <li data-target="#home-slideshow" data-slide-to="2"></li>
                   	  </ol>
    
                  <!-- Wrapper for slides -->
                  	<div class="carousel-inner" role="listbox">
                   	 	<div class="item active">
                     		 <img src="E:\PMK_HOCTAP\ECLIPSE\WebThiTracNghiemOnline\WebContent\img\tracnghiem.jpg" alt="...">
                      	<div class="carousel-caption">
                       HÌNH THỨC HỌC TẬP PHONG PHÚ ĐA DẠNG
                     	 </div>
                  	    </div>
                   		<div class="item">
                     		 <img src="E:\PMK_HOCTAP\ECLIPSE\WebThiTracNghiemOnline\WebContent\img\tracnghiem2.jpg" alt="...">
                        <div class="carousel-caption">
                        TẬN DỤNG THỜI GIAN HIỆU QUẢ
                        </div>
                        </div>
                        <div class="item">
                     		 <img src="E:\PMK_HOCTAP\ECLIPSE\WebThiTracNghiemOnline\WebContent\img\tracnghiem4.jpg" alt="...">
                        <div class="carousel-caption">
                        MÔI TRƯỜNG HỌC TẬP CHẤT LƯỢNG,CHUYÊN NGHIỆP
                        </div>
                        </div>
                  	 </div>
                
                	  <!-- Controls -->
                      <a class="left carousel-control" href="#home-slideshow" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="right carousel-control" href="#home-slideshow" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                      </a>
                     </div>
                     </div>
              
            </div>
            
            
            
            
            <div class="row" >
            	<div class="col-xs-12 col-md-12 text-center">
                	<div class="panel panel-default">

                    <div id="tieude" class="panel-body"><strong>WEBSITE THI TRẮC NGHIỆM ONLINE</strong></div>
                  </div>
                </div>
            </div>
            
            <div  id="main">
           	 <div class="row home-row">
            	<div class="col-sm-12 col-md-6 col-lg-3">
                	<h3 class="home-title">
                    	HIỆU QUẢ                  
                    </h3>
                    <span class="home-icon glyphicon glyphicon-star"></span>
                    
                </div>
                
                <div class="col-sm-12 col-md-6 col-lg-3">
                    <h3 class="home-title">
                    	CHÍNH XÁC
                    </h3>
                    <span class="home-icon glyphicon glyphicon-fire"></span>
                 <!--  <p class="text-center">phamminh ke pham minh ke pham minh ke pham minh ke pham minh ke 
                    </p> -->
                     <!--
                    <p class="text-center">
                    	<a href="#" class="btn btn-primary">Read more</a>
                    </p>
                    -->
                </div>
                
                <div class="col-sm-12 col-md-6 col-lg-3">
                    <h3 class="home-title">
                    	LUÔN CẬP NHẬT
                    </h3>
                    <span class="home-icon glyphicon glyphicon-ok-sign"></span>
                   <!-- <p class="text-center">phamminh ke pham minh ke pham minh ke pham minh ke pham minh ke 
                    </p> -->
                     <!--
                    <p class="text-center">
                    	<a href="#" class="btn btn-primary">Read more</a>
                    </p>
                    -->
                </div>
                
                <div class="col-sm-12 col-md-6 col-lg-3">
                    <h3 class="home-title">
                    	HỮU ÍCH
                    </h3>
                    <span class="home-icon glyphicon glyphicon-heart-empty"></span>
                  <!-- <p class="text-center">phamminh ke pham minh ke pham minh ke pham minh ke pham minh ke 
                    </p> -->
                     <!--
                    <p class="text-center">
                    	<a href="#" class="btn btn-primary">Read more</a>
                    </p>
                    -->
                </div>
                </div>
                <div class="container">
                  <h2>WELCOME TO OUR WEBSITE</h2>
                  <p>Website học trắc nghiệm online được thức hiện bởi các sinh viên khoa Công Nghệ Thông Tin trường Đại học sư phạm kỹ thuật Thành phố Hồ Chí Minh</p>
                  <p>Là một trong những website hiện đại hàng đầu trong việc giảng dạy và học tập.</p>
                 
                  <div class="row">
                  <div class="col-md-10 col-md-offset-1">
                    <div class="col-md-4">
                      <div class="thumbnail chinhhinh">
                        <a href="img/1c8976dc15181ab504e44ca364c00f46.jpg" target="_blank">
                          <img src="img/21762136_113228722754593_5050937761295178598_n.jpg" class="img-circle person" alt="Lights" style="width:100%">
                          <div class="caption">
                            <p>Phạm Minh Kế
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="thumbnail chinhhinh">
                        <a href="img/images.jpg" target="_blank">
                          <img src="img/12440633_573970789433426_7610237107773393586_o.jpg" class="img-circle person" alt="Lights" style="width:100%">
                          <div class="caption">
                            <p>Phạm Văn Tới
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="thumbnail chinhhinh">
                        <a href="img/images-1.jpg" target="_blank">
                          <img src="img/18194674_1903884429889411_8970865604682116612_n.jpg" class="img-circle person" alt="Fjords" style="width:100%">
                          <div class="caption">
                            <p>Nguyễn Hoài Phương</p>
                          </div>
                        </a>
                      </div>
                    </div>
                  </div>
                 </div>
                  
                </div>

               
            </div>
            <!--Phần Footer-->
            <div id="footer" class="row">
            	<div class="col-xs-12 col-md-4">
                	<strong style="color: white">ĐỊA CHỈ LIÊN HỆ:</strong>
                  <hr width="60%" align="left" />
                  <p style="color: white">* Trường đại học sư phạm kỹ thuật thành phố Hồ Chí Minh</p>
                  <p style="color: white">* Nhóm sinh viên K15 khoa Công Nghệ Thông Tin</p>
              </div>
              <div class="col-xs-12 col-md-4">
                  <strong style="color: white">HỖ TRỢ :</strong>
                  <hr width="60%" align="left" />
                  <ul style="list-style-type:none; margin-left: 2px;padding: 0">
                    <li><a href="#" style="color: white">Giải đáp thắc mắc</a></li>
                    <li><a href="#" style="color: white">Hướng dẫn sử dụng</a></li>
                    <li><a href="#" style="color: white">Chính sách</a></li>
                  </ul> 
              </div>

              <div class="col-xs-12 col-md-4"> 
                <div class="thumbnail">
                        <a href="https://map.coccoc.com/map/686195271228854?title=Tr%C6%B0%E1%BB%9Dng+%C4%91%E1%BA%A1i+h%E1%BB%8Dc+s%C6%B0+ph%E1%BA%A1m+k%E1%BB%B9+thu%E1%BA%ADt+th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh&reqid=MCPxIUn2" target="_blank">
                          <img src="img/Capture.JPG" class="img-responsive" alt="Cinque Terre" width="400" height="100">
                          
                        </a>
                      </div>
                    </div>
                </div>
            </div>
        </div>
    	 <!-- Tích hợp JQuuery-->
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>   
</body>
</html>