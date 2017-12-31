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
            	<button class="btn btn-primary btn-lg active" id="idTaoCauHoiFileTroVe">
            		Trở Về</button>
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
        
        <div class="col-md-12 col-xs-12 col-sm-12">
        	<input type="file" class="col-md-12" id="" value="Chọn File">
        </div>
        <div class="col-md-12 col-xs-12 col-sm-12" style="margin-top:20px; margin-bottom:20px;">
            <div class="col-md-2 col-xs-6 col-sm-6" col-md-offset-8>
                <button class="btn btn-primary btn-lg active" id="" >
                        Tạo Câu Hỏi</button>
            </div>
        </div>
    </div>
</body>
</html>