<%@ page import="MVCModel.CauHoi" %>
<%@ page import="MVCModel.DanhSachCauHoi" %>
<%@ page import="java.util.*, java.text.*"  %>  
<%@ page import="java.util.List, java.text.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
	<script type="text/javascript">
		$(document).ready(function(){
		    $('.search').on('keyup',function(){
		        var searchTerm = $(this).val().toLowerCase();
		        $('#userTbl tbody tr').each(function(){
		            var lineStr = $(this).text().toLowerCase();
		            if(lineStr.indexOf(searchTerm) === -1){
		                $(this).hide();
		            }else{
		                $(this).show();
		            }
		        });
		    });
		    
		});
	</script>
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
                	<li><a href="GiangVienTNOL.jsp">TRANG CHỦ</a></li>
                    <li><a href="ThongBaoGiangVien.jsp">ĐĂNG THÔNG BÁO</a></li>
                    
                    <li>
                		<a href="#" class="dropdown-toggle" data-toggle="dropdown">QUẢN LÝ NGÂN HÀNG CÂU HỎI<b class="caret"></b></a>
                         <ul class="dropdown-menu">
                           <li><a href="NHCauHoiGiangVien.jsp"><span>KhoaCNTT</span></a></li>
                           <li class="divider"></li>
                           <li><a href="NHCauHoiGiangVien.jsp"><span>Khoa Điện</span></a></li>
                           <li class="divider"></li>
                           <li>
                              	<a href="NHCauHoiGiangVien.jsp"><span>Xây Đựng</span></a>                                
                           </li>
                         </ul>
                    </li>
                    
                    <li>
                		<a href="#" class="dropdown-toggle" data-toggle="dropdown">TẠO DANH SÁCH CÂU HỎI<b class="caret"></b></a>
                         <ul class="dropdown-menu">
                         
                           <li><a href="TaoCauHoiGiangVienOL.jsp"><span>Lập Trình Web</span></a></li>
                           <li class="divider"></li>
                           <li><a href="TaoCauHoiGiangVienOL.jsp"><span>Toán Ứng Dụng</span></a></li>
                           <li class="divider"></li>
                           <li>
                              	<a href="TaoCauHoiGiangVienOL.jsp"><span>Kỹ Thuật Lập Trình</span></a>
                           </li>
                           
                         </ul>
                    </li>
                    
                    <li>
                		<a href="#" class="dropdown-toggle" data-toggle="dropdown">QUẢN LÝ SINH VIÊN THI<b class="caret"></b></a>
                         <ul class="dropdown-menu">
                         
                           <li><a href="TaoCauHoiGiangVienOL.jsp"><span>Lập Trình Web</span></a></li>
                           <li class="divider"></li>
                           <li><a href="TaoCauHoiGiangVienOL.jsp"><span>Toán Ứng Dụng</span></a></li>
                           <li class="divider"></li>
                           <li>
                              	<a href="TaoCauHoiGiangVienOL.jsp"><span>Kỹ Thuật Lập Trình</span></a>
                           </li>
                           
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
            <li><a href="#" name="clickme" id="idThongTinGiangVien" ><i class="glyphicon glyphicon-user" style="padding:15px;"></i>Thông Tin Cá Nhân</a></li>
            <li><a href="#" name="clickme" id="idDoiMKMenuLeft"><i class="fa fa-pencil-square" style="padding:15px;"></i>Đổi Mật Khẩu</a></li>
            <li><a href="#"><i class="glyphicon glyphicon-remove" style="padding:15px;"></i>Thoát</a></li>
        </ul>
	</div>
    <!--MENU CenTer-->
    <div class="col-md-7 menu-center" id="menu-center">
       <div id="menu-centerthongbao" class="col-md-12">
			<span><i class="fa fa-calendar-check-o" style="padding:15px;"></i>Quản Lý Ngân Hàng Câu Hỏi</span>
        </div>
        <div class="col-md-12 menu-center thongtincanhan" id="menu-centernoidung">
        	
            <form class="col-md-12" style="width:100%" style="margin:0px;">
            
            	<div class="col-md-12 col-xs-12 col-sm-12">
                	<div class="col-sm-6 col-xs-12 col-md-6">
                        <span><label>Khoa:</label></span>
                        
                        <select>
                            <option>Khoa CNTT</option>
                            <option>Khoa Xây Dựng</option>
                            <option>CKM</option>
                            <option>CNM</option>
                        </select>
                    </div>   
                	<div class="col-sm-6 col-xs-12  col-md-6">
                        <span><label>Khóa:</label></span>
                        
                        <select>
                            <option>Năm 2017-2018</option>
                            <option>Năm 2018-2019</option>
                            <option>Năm 2019-2020</option>
                        </select>
                    </div>
                       
                </div>
                <div class="col-md-12 col-xs-12 col-sm-12">
                    <div class="col-sm-6 col-xs-12 col-md-6">
                        <span><label>Môn Học:</label></span>
                        <select>
                            <option>Thiết Kế Web</option>
                            <option>Lập Trình Web</option>
                            <option>CNPM</option>
                            <option>Mạng MT</option>
                        </select>
                        
                    </div>
                    <div class="col-sm-6 col-xs-12 col-md-6">
                            <span><label>Học Kì:</label></span>
                            <select>
                                <option>Tất Cả</option>
                                <option>Học Kì 1</option>
                                <option>Học Kì 2</option>
                            </select>
                    </div>
                </div>
                
                <div class="col-md-12 col-xs-12 col-sm-12" style="margin-top:40px; margin-bottom:20px; border:1px solid #33cc33;">
                	<div class="col-md-3 col-xs-3 col-sm-3" style="margin:10px 0px;">
                        <button class="btn btn-primary btn-lg active" id="" style="height:27px;" disabled="disabled">
                        <label style="margin-top:-10px;">Tìm Kiếm</label></button>
                     </div>
                     
                	<div class="col-md-9 col-md-9 col-xs-9 col-sm-9" style="margin:10px 0px;">
                    	<input type="text" class="search form-control" class="form-group pull-right" id="timkiemNHCH" style="width:100%;border:1.5px solid black;"/>
                    </div>
                    
                </div>
                
                
					<table class="table table-striped table-condensed table-bordered" id="userTbl" style="width:100%; border:3px solid black" id="TableCauHoi">
					    <thead>
					    <tr>
					      <th>Mã CH</th>
					      <th>Tên Câu Hỏi</th>
					      <th>Chi Tiết</th>
					      <th>Sửa</th>
					      <th>Xóa</th>
					    </tr>
					    </thead>
					    <tbody>
						   
							<%
		                		List<CauHoi> danhsachCH= null;
								danhsachCH= new DanhSachCauHoi().GetDSCauHoi();
		                		
		                		getServletContext().setAttribute("danhsachCH", danhsachCH);
		                		
		                			
		                	%>
		                	
		                	<c:forEach items="${danhsachCH}" var="cauhoitheomon">
                    		<tr>
								<td>${cauhoitheomon.getMaCH()}</td><td>${cauhoitheomon.getNoiDung()}</td>
								<td><a href="./XemCauHoi?MaCH=${cauhoitheomon.getMaCH()}"><i class="fa fa-search"></i></a></td>
								<td><a href="SuaCauHoiGiangVien.jsp?MaCH=${cauhoitheomon.getMaCH()}"><i class="fa fa-pencil-square-o"></i></a></td>
								<td><a href="#"><i class="fa fa-remove"></i></a></td>
							</tr>
							
                   			</c:forEach>
					    </tbody>
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