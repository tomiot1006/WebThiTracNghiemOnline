<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"  %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ page import="java.util.List, java.text.*" %>
	

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="./jquery-3.2.1.min.js"></script>
   	<link rel="stylesheet" href="./styleGVTN.css"/>
    <link rel="stylesheet" href="./font-awesome.min.css">
    <script src="GVStyle.js"></script>
    <%
    	
    	String Key=(String)request.getSession().getAttribute("Key");
    	System.out.print(Key);
    %>

    
<title>Giang Vien</title>
</head>
<body>
	<div class="navbar navbar-default navbar-fixed" role="navigation">
		<div class="container-fluid">
        	<div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img src="./anhdemo.jpg" style="width:inherit; height:inherit;"/></a>
            </div>
           
            <div class="collapse navbar-collapse">
            
         		<ul class="nav navbar-nav">
                	<li><a href="ThemMucDoc">TRANG CHỦ</a></li>
                    <li><a href="./DangThongBaoGiangVien">ĐĂNG THÔNG BÁO</a></li>
                    <li>
                    
                		<a href="#" class="dropdown-toggle" data-toggle="dropdown">QUẢN LÝ NGÂN HÀNG VÀ TẠO CÂU HỎI<b class="caret"></b></a>
                         <ul class="dropdown-menu">
                        	<c:forEach items="${DSMonHoc}" var="monhocdemo">
                    			<li><a href="LoadTaoCauHoi?MaMH=${monhocdemo.getMaMH()}"><span>${monhocdemo.getTenMH()}</span></a></li>
                    			<li class="divider"></li>
                   			</c:forEach>
                         	
                         </ul>
                    </li>
                    
                    <li>
                		<a href="#" class="dropdown-toggle" data-toggle="dropdown">QUẢN LÝ SINH VIÊN THI<b class="caret"></b></a>
                         <ul class="dropdown-menu">
                         <c:forEach items="${DSMonHoc}" var="monhocdemo">
                    			<li><a href="QuanLySinhVienThi.jsp?MaMH=${monhocdemo.getMaMH()}"><span>${monhocdemo.getTenMH()}</span></a></li>
                    			<li class="divider"></li>
                   			</c:forEach>
                       </ul>
                    </li>
                    
                    <li>
                    	<button type="button" class="btn btn-primary btn-lg active" style="margin-left:50px;"
                    	 >Thoát</button>
                    </li>
                    
                </ul>
                
            </div>
            
        </div>
        
    </div>
    <!--MENU LEFT-->
    <div class="col-md-2 menu-left menuleft" style="width:auto;">
        <ul class="main-menuleft">
            <li><a href="GiangVienTNOL.jsp"><i class="glyphicon glyphicon-home" style="padding:15px;"></i>Trang Của Bạn</a></li>
            <li><a href="./ThongTinCaNhan" name="clickme" id="idThongTinGiangVien" ><i class="glyphicon glyphicon-user" style="padding:15px;"></i>Thông Tin Cá Nhân</a></li>
            <li><a href="./LoadDMK" name="clickme" id="idDoiMKMenuLeft"><i class="fa fa-pencil-square" style="padding:15px;"></i>Đổi Mật Khẩu</a></li>
            <li><a href="#"><i class="glyphicon glyphicon-remove" style="padding:15px;"></i>Thoát</a></li>
        </ul>
	</div>
    <!--MENU CenTer-->
    <div class="col-md-7 menu-center" id="menu-center">
       <div id="menu-centerthongbao" class="col-md-12">
			<span><i class="fa fa-pencil-square" style="padding:15px;"></i>Đổi Mật Khẩu</span>
        </div>
        <div class="col-md-12 menu-center thongtincanhan" id="menu-centernoidung">
        	<c:if test = "${Key == 0}">
 
   			</c:if>
            <form class="col-md-12" id="formDoiMatKhau" action="DoiMatKhau" method="post">
                    <div class="col-md-12 doimatkhau">
                        <div class="col-md-4 nhapmk" ><label>Mật Khẩu Hiện Tại :</label></div>
                        <div class="col-md-7 nhapmk txtmatkhau"><input type="password" class="passmk" id="matkhau_hientai" style="width:100%;" name="MKHienTai" ></div>
                    </div>
                    
                    <div class="col-md-12">
                        <span class="error" id="error-mk-hientai"></span>
                    </div>
                    
                    <div class="col-md-12 doimatkhau" >
                            <div class="col-md-4 nhapmk" ><label>Mật Khẩu Mới :</label></div>
                            <div class="col-md-7 nhapmk txtmatkhau"><input type="password" class="passmk" id="matkhau_moi" style="width:100%;" name="MKMoi" ></div>
                    </div>
                    
                    <div class="col-md-12">
                     <span class="error" id="error-mk-moi"></span>
                    </div>
                    
                    <div class="col-md-12 doimatkhau">
                            <div class="col-md-4 nhapmk" ><label>Xác Nhận Mật Khẩu :</label></div>
                            <div class="col-md-7 nhapmk txtmatkhau"><input type="password" class="passmk" id="matkhau_xacnhan" style="width:100%;" name="XNMatKhau" ></div>
                    </div>
                    
                    <div class="col-md-12">
                        <span class="error" id="error-mk-xacnhan"></span>
                    </div>
                    <%
                    if(Key=="0")
                	{
                		%>
                		<div class="col-md-12">
                     		<span class="error">Đổi Mật Khẩu Thất Bại Mật Khẩu Hiện Tại Không Đúng.</span>
                   		 </div>
                		
                	<%	
                	}
                    %>
                    <%
				    	if(Key=="1")
				    	{
				    		%>
				    		<div class="col-md-12">
                     		<span class="" style="color: #42f471">Đổi Mật Khẩu Thành Công.</span>
                   		 </div>
				    		
				    	<%	
				    	}
    	
  				  %>
                    <div class="col-md-3 col-md-offset-8">
                        <button class="btn btn-primary btn-lg active animated" id="xacnhandoimatkhau" type="submit">Đổi Mật Khẩu</button>
                    </div>
                   
            </form>
            
        </div>
        <div class="col-md-12 menu-center thongtincanhan" id="menu-centernoidung">
        
        </div> 
    </div>
    <!--MENU-Right-->
    <div id="menu-right" class="col-md-2">
    	<div class="thongbao col-md-12">
    		<div class="tieudethongbao col-md-12">
    		<p style="text-align: center; color: #17538c; font-weight: bold;">THÔNG BÁO</p>
    		</div>
        	<marquee onmouseover="this.stop()" onmouseout="this.start()" scrollamount="2" direction="down"
        	 width="100%" height="205" align="center" style="border: 2px solid #edf2f5;">

				Hiển Thị Thông báo theo chiều từ trên xuông
				<a href="google.com">ASASADSAD</a>
				
			</marquee>
			<div class="tieudethongbao col-md-12">
    		<p style="text-align: center; color: #17538c; font-weight: bold;">SỰ KIỆN</p>
    		</div>
        	<marquee onmouseover="this.stop()" onmouseout="this.start()" scrollamount="2" direction="down"
        	 width="100%" height="205" align="center" style="border: 2px solid #edf2f5;">

				Hiển Thị sự kiện theo chiều từ trên xuông
				<a href="google.com">ASASADSAD</a>
				
			</marquee>
        </div>
    	<div class="lich col-md-12">
	      

		</div>
    </div>
    <!--Footer-->
    <div id="idfooter" class="col-md-12 footer" style="background-color: #edf2f5; margin: 20px 0px;">
	    <div class="col-md-6 col-md-offset-1" style="margin-top: 20px; margin-bottom: 10px;">
	    	<span style="color: #3399ff; font-size: 18px;">TRƯỜNG ĐẠI HỌC SƯ PHẠM KỸ THUẬT TP.HCM</span><br/> 
			<span>Số 1 Võ Văn Ngân , Quận Thủ Đức, TP.HCM</span><br/> 
			<span>Điện thoại: (84-8) 37221223</span>
	    </div>
	    <div class="col-md-4" style=" margin-top: 20px; margin-bottom: 10px;">
	    	<span>©2017 Đại học Sư Phạm Kỹ Thuật thành phố Hồ Chí Minh</span><br/> 
			<span>Design by:</span><span style="font-weight: bold;">Phương Nguyễn</span><br/> 
			<span>Điện thoại: 0964824963</span>
	    </div>
    </div>
</body>
</html>