
<%@ page import="java.util.*, java.text.*"  %>  
 
<%@ page import="java.util.List, java.text.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
   	<link rel="stylesheet" href="./GVStyle.js"/>
    <link rel="stylesheet" href="./font-awesome.min.css">
	<script src="GVStyle.js"></script>
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
			<span><i class="fa fa-pencil-square-o" style="padding:15px;"></i>Quản Lý Sinh Viên Thi</span>
        </div>
        <div class="col-md-12 menu-center thongtincanhan" id="menu-centernoidung">
        	
            <form class="col-md-12 col-xs-12 col-sm-12" style="width:100%" style="margin-bottom:20px;">
            
            	<div class="col-md-12 col-xs-12 col-sm-12" style="border:1px solid #33cc33; margin:20px 0px;">
                	<div class="col-sm-6 col-xs-6 col-md-6">
                        <span><label>Môn Học:</label></span>
                        <select>
                            <option>Thiết Kế Web</option>
                            <option>Lập Trình Web</option>
                            <option>CNPM</option>
                            <option>Mạng MT</option>
                        </select>
                        
                    </div>
                	<div class="col-sm-6 col-xs-6  col-md-6" style="margin-bottom:20px;">
                        <span><label>Khóa:</label></span>
                        
                        <select disabled="disabled">
                            <option>Năm 2017-2018</option>
                            <option>Năm 2018-2019</option>
                            <option>Năm 2019-2020</option>
                        </select>
                    </div>
                    <div class="col-sm-6 col-xs-6 col-md-6" style="margin-bottom:10px;" >
                        <span><label>Học Kì:</label></span>
                        <select>
                            <option>Học Kì 1</option>
                            <option>Học Kì 2</option>
                            <option>Học Kì Hè</option>
                        </select>
                        
                    </div>   
                </div>
               	<div class="col-md-3 col-md-offset-3 col-xs-12 col-sm-12" style="margin-bottom:20px;">
                     	<button class="btn btn-primary btn-lg active" id="btnThemSinhVien" style="height:27px;">
                        <label style="margin-top:-10px;">Thêm Sinh Viên Thi</label></button></a>
                </div>
                <div class="col-md-3 col-md-offset-1 col-xs-12 col-sm-12" style="margin-bottom:20px;">
                     	<button class="btn btn-primary btn-lg active " id="btnTaoSinhVienFile" style="height:27px;">
                        <label style="margin-top:-10px;">Thêm Sinh Viên File</label></button>
                </div>
                <table style="width:100%; border:3px solid black" class="table table-condensed table-bordered col-md-12 col-xs-12 col-sm-12">
	                <th>STT</th><th>Mã CH</th><th>Tên Câu Hỏi</th><th>Mã CD</th><th>Chi Tiết</th><th>Sửa</th><th>Xóa</th>
	                
                	<tr>
					<td></td><td></td><td></td><td></td>
					<td><a href="ChiTietCauHoiGiangVien.jsp?MaCH="><i class="fa fa-search"></i></a></td>
					<td><a href="SuaCauHoiGiangVien.jsp?MaCH="><i class="fa fa-pencil-square-o"></i></a></td>
					<td><a href="#"><i class="fa fa-remove"></i></a></td>
					</tr>	
					
	                	<tr>
						<td>1</td><td>1</td><td>Ten Câu Hỏi(Nội Dung)</td><td>1</td>
						<td><a href="ChiTietCauHoiGiangVien.jsp"><i class="fa fa-search"></i></a></td>
						<td><a href="SuaCauHoiGiangVien.jsp"><i class="fa fa-pencil-square-o"></i></a></td>
						<td><a href="#"><i class="fa fa-remove"></i></a></td>
					</tr>
					<tr>
						<td>1</td><td>1</td><td>Ten Câu Hỏi(Nội Dung)</td><td>1</td>
						<td><a href="ChiTietCauHoiGiangVien.jsp"><i class="fa fa-search"></i></a></td>
						<td><a href="SuaCauHoiGiangVien.jsp"><i class="fa fa-pencil-square-o"></i></a></td>
						<td><a href="#"><i class="fa fa-remove"></i></a></td>
					</tr>
                </table>
            </form>
            
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