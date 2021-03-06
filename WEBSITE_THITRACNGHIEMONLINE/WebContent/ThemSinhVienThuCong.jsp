<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="./GV.js"></script>
    <script src="./jquery-3.2.1.min.js"></script>
   	<link rel="stylesheet" href="./styleGV.css"/>
    <link rel="stylesheet" href="./styleGV.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="GVStyle.js"></script>
<title>Tao Cau Hoi</title>
</head>
<body>
	<div class="container">
    	<div class="col-md-2 col-md-offset-10" style="margin-top:10px;">
            	<button class="btn btn-primary btn-lg active" id="idTaoThuCongTroVe" style="height:27px;">
            		<label style="margin-top:-10px;">Trở Về</label></button>
        </div>
    	<div class="col-md-12 col-xs-12 col-sm-12" style="border:1px solid #66ccff; margin-bottom:20px; margin-top:20px;">
 
            <div class="col-sm-6 col-xs-6 col-md-6">
                            <span><label>Môn Học:</label></span>
                            <select style="width: 100%">
                                <option>Thiết Kế Web</option>
                                <option>Lập Trình Web</option>
                                <option>CNPM</option>
                                <option>Mạng MT</option>
                            </select>
                            
            </div>
            <div class="col-sm-6 col-xs-6  col-md-6" style="margin-bottom:20px; margin-bottom:20px;">
                            <span><label>Khóa:</label></span>
                            
                            <select disabled="disabled" style="width: 100%">
                                <option>Năm 2017-2018</option>
                                <option>Năm 2018-2019</option>
                                <option>Năm 2019-2020</option>
                            </select>
            </div>   
        </div>
        
        <div class="col-md-12 col-xs-12 col-sm-12" style="border:1px solid #00cc66; margin-bottom:20px;">
            <div class="col-sm-6 col-xs-6 col-md-6">
            	<label>Mã CH:</label><input type="text" class="" id="" style="width:100%;border:1px solid black;" value="CH1" disabled="disabled"/>         
            </div>
            <div class="col-sm-6 col-xs-6  col-md-6" style="margin-bottom:20px;">
                            <span><label>Chủ Đề:</label></span>
                            
                            <select style="width: 100%">
                                <option>Thiết Kế</option>
                                <option>Kiểm Thử</option>
                                <option>Giao Diện</option>
                            </select>
            </div>   
        </div>
        <div class="col-md-12 col-xs-12 col-sm-12" style="border:1px solid #66ccff; margin-bottom:20px;">
            <div class="col-sm-6 col-xs-6 col-md-6">
            				<span><label>Mức Độ</label></span>
                            <select style="width: 100%">
                                <option>Dễ</option>
                                <option>Vận Dụng</option>
                                <option>Vận Dụng Cao</option>
                            </select>        
            </div>
            <div class="col-sm-6 col-xs-6  col-md-6" style="margin-bottom:20px;">
                            <span><label>Loại CH:</label></span>
                            
                            <select style="width: 100%" id="idLoaiCauHoi" onchange="genderChanged(this)">
                                <option value="4PhuongAn">4 Phương án</option>
                                <option value="3PhuongAn">3 Phương án</option>
                                <option value="2PhuongAn">2 Phương án</option>
                                <option value="DienKhuyet">Điền Khuyết</option>
                            </select>
            </div>   
        </div>
        <div class="col-md-12 col-xs-12 col-sm-12" style="margin-bottom:20px;">
            <div class="col-sm-12 col-xs-12 col-md-3 col-md-offset-6">
            	<button class="btn btn-primary btn-lg active" id="" style="height:27px; margin: 10px 0px;">
                        <label style="margin-top:-10px;">Thêm Mức Độ</label></button>
            </div>
            <div class="col-sm-12 col-xs-12 col-md-3">
            	<button class="btn btn-primary btn-lg active" id="" style="height:27px; margin: 10px 0px; ">
                        <label style="margin-top:-10px;">Thêm Chủ Đề</label></button>
            </div>    
        </div>
        <div class="col-md-12 col-xs-12 col-sm-12" style="border:1px solid #00cc66; margin-bottom:20px;" id="idNoiDungCauHoi">
        	<div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Nội Dung Câu Hỏi:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control" id="" rows="2" style="width:100%;"></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án A:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control" id="" rows="1" style="width:100%;"></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án B:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control" id="" rows="1" style="width:100%;"></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án C:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control" id="" rows="1" style="width:100%;"></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án D:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
            	<textarea class="col-md-12 noidung form-control" id="" rows="1" style="width:100%;"></textarea>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12">
           	 <label>Đáp Án Chính Xác:</label>
            </div>
            <div class="col-md-12 col-xs-12 col-sm-12" style="margin-bottom: 5px;">
            	<textarea class="col-md-12 noidung form-control" id="" rows="1" style="width:100%;"></textarea>
            </div>	
        </div>
        <div class="col-md-12 col-xs-12 col-sm-12" style="margin-top:20px; margin-bottom:20px;">
            <div class="col-md-3 col-md-offset-7 col-xs-6 col-sm-6" >
                <button class="btn btn-primary btn-lg active" id="" style="height:27px;">
                        <label style="margin-top:-10px;">Thêm Hình Ảnh</label></button>
            </div>
            <div class="col-md-2 col-xs-6 col-sm-6">
                <button class="btn btn-primary btn-lg active" id="" style="height:27px;">
                        <label style="margin-top:-10px;">Tạo Câu Hỏi</label></button>
            </div>
        </div>
    </div>
</body>
</html>