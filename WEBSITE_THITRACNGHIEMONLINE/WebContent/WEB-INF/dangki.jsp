<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<fmt:requestEncoding value="UTF-8" />   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="VI">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ĐĂNG KÍ</title>  
    <style type="text/css">
    label {
        display: inline-block;
        width: 150px;
    }
    input[type="text"], input[type="password"] {
        display: inline-block;
        width: 200px; 
    }
    label.error {
        display: inline-block;
        color:red;
        width: 200px;
    }
    </style>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/bootstrap-theme.css" rel="stylesheet" />
        <link href="dangki.css" rel="stylesheet" />
    <!-- Load Thư viện jQuery vào trước khi load jQuery Validate-->

    <script type="text/javascript" src="jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="jquery.validate.min.js"></script>
</head>
<body>
 <div class="container">
        <div  id="theform" class="col-xs-9 col-xs-offset-2">
    <form id="formDemo">
        <fieldset>
           
                       
                            <div class="alert alert-info" role="alert"> <legend>Đăng kí tài khoản WEBSITE</legend></div>
                            
                       <div class="alert alert-success" role="alert"><label class="user">Tên đăng nhập :</label>
                            <input name="ho" type="text" class="form-control" placeholder="Enter username" required><br></div>
                        <div class="alert alert-success" role="alert"><label class="user">Tên hiển thị :</label>
                             
                                <input type="text" name="ten" class="form-control"  placeholder="Enter displayname" required></div>
                        <div class="alert alert-success" role="alert"><label class="user">Địa chỉ :</label>
                             
                                <input type="text" name="diachi" class="form-control"  placeholder="Enter Address" required></div>
                        <div class="alert alert-success" role="alert"><label class="user">Số điện thoại:</label>
                            
                                <input type="text" name="sodienthoai" class="form-control"  placeholder="Enter Numberphone" required></div>
                        <div class="alert alert-success" role="alert"><label class="user">Email :</label>
                             
                                <input type="text" name="email" class="form-control"  placeholder="Enter Email" required></div>
                        <div class="alert alert-success" role="alert"><label class="user">Mật khẩu :</label>
                             
                                <input  id="password" type="password" name="password" class="form-control"  placeholder="Enter Password" required></div>
                        <div class="alert alert-success" role="alert"><label class="user">Nhập lại :</label>
                             
                                <input  id="password" type="password" name="confirm_password" class="form-control"  placeholder="Enter Re-Password" required></div>
                        <div class="alert alert-success" role="alert"><label  class="user">Select Gender :</label>
                            <select class=" text">
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            </select></div>
                        <div class="alert alert-success" role="alert"><label class="user">Điều khoản : </label>
                             
                             <input name="dieukhoan" type="checkbox"></div>
                        <div class="alert alert-success" role="alert"><label class="user">Ghi chú :</label>
                            
                             
                                <input   type="text" name="thongtinthem" class="form-control"  placeholder="Enter Re-Password" ></div>
                        <div class="alert alert-success" role="alert"><button  type="submit" class="btn btn-success">Submit</button></div>
            
        </fieldset>
    </form>
</div>
    </div>
    <script type="text/javascript">

    $(document).ready(function() {
        
        //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
        $("#formDemo").validate({
                    rules: {
                        ho: "required",
                        ten: "required",
                        diachi: {
                            required: true,
                            minlength: 2
                        },
                        sodienthoai: {
                            required: true,
                            minlength: 5
                        },
                        password: {
                            required: true,
                            minlength: 5
                        },
                        confirm_password: {
                            required: true,
                            minlength: 5,
                            equalTo: "#password"
                        },
                        email: {
                            required: true,
                            email: true
                        },
                        dieukhoan: "required"
                    },
                    messages: {
                        ho: "Hãy kiểm tra lại!!",
                        ten: "Hãy kiểm tra lại!!",
                        diachi: {
                            required: "Hãy kiểm tra lại!!",
                            minlength: "Hãy kiểm tra lại!!"
                        },
                        sodienthoai: {
                            required: "Hãy kiểm tra lại!!",
                            minlength: "Hãy kiểm tra lại!!"
                        },
                        password: {
                            required: 'Hãy kiểm tra lại!!',
                            minlength: 'Hãy kiểm tra lại!!'
                        },
                        confirm_password: {
                            required: 'Hãy kiểm tra lại!!',
                            minlength: 'Vui lòng nhập ít nhất 5 kí tự',
                            equalTo: 'Mật khẩu không trùng'
                        },
                        email: {
                            required: "Please provide a password",
                            minlength: "Your password must be at least 5 characters long",
                            equalTo: "Please enter the same password as above"
                        },
                        email: "Vui lòng nhập Email",
                        agree: "Vui lòng đồng ý các điều khoản"
                    }
                });
    });
    </script>

</body>
</html>