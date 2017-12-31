//Chọn Câu Hỏi


//Quan Lý Sinh Vien Thi
$(document).ready(function(e) {
          $('#btnThemSinhVien').on('click',function(e){
        	  alert("aa");
          	window.open("./ThemSinhVienThuCong.jsp");
			});
      });  
	$(document).ready(function(e) {
        $('#btnTaoSinhVienFile').on('click',function(e){
        	window.open("./ThemSinhVienFile.jsp");
        	//window.location="./TaoCauHoiFile.jsp";
			});
    });
//Tìm  kiếm câu hỏi ngan hàng cau hỏi
//Tao Cau Hoi
 
//Tao Cau Hoi
$(document).ready(function(e) {
        $('#idTaoThuCongTroVe').on('click',function(e){
        	window.location="./TaoCauHoiGiangVienOL.jsp";
			});
});
	$(document).ready(function() {
        $('#idLoaiCauHoi').change(function(e) {
        	var x = document.getElementById("idLoaiCauHoi").value;
        	if(x=="4PhuongAn")
        	{
	            $.ajax({
	                url: './CauHoi4DapAn.html',
	                type: 'POST',
	                dataType: 'html',
	                data: {
	                }
	            }).done(function(ketqua) {
	                $('#idNoiDungCauHoi').html(ketqua);
	                $("#error-noidungCH").hide();
	            	$("#error-DapAnA").hide();
	            	$("#error-DapAnB").hide();
	            	$("#error-DapAnC").hide();
	            	$("#error-DapAnD").hide();
	            	$("#error-DapAnDung").hide();
	            	var error_noidungCH = false,error_DapAnA = false,
	            	error_DapAnB = false,error_DapAnC = false,error_DapAnD = false,error_DapAnDung = false;
	            	var noidungCH_length,noidungCauA_length,
	            	noidungCauB_length,noidungCauC_length,noidungCauD_length,noidungCauDung_length;
	            	$("#idNDCauHoi").blur(function() {
	            		check_noidungCH();
	            		alert("ASAS");
	            	});
	            });
        	}
        	
        	if(x=="3PhuongAn")
        	{
	            $.ajax({
	                url: './CauHoi3DapAn.html',
	                type: 'POST',
	                dataType: 'html',
	                data: {
	                }
	            }).done(function(ketqua) {
	                $('#idNoiDungCauHoi').html(ketqua);
	            });
        	}
        	
        	if(x=="2PhuongAn")
        	{
	            $.ajax({
	                url: './CauHoi2DapAn.html',
	                type: 'POST',
	                dataType: 'html',
	                data: {
	                }
	            }).done(function(ketqua) {
	                $('#idNoiDungCauHoi').html(ketqua);
	            });
        	}
        	if(x=="DienKhuyet")
        	{
	            $.ajax({
	                url: './CauHoiDienKhuyet.html',
	                type: 'POST',
	                dataType: 'html',
	                data: {
	                }
	            }).done(function(ketqua) {
	                $('#idNoiDungCauHoi').html(ketqua);
	            });
        	}
        	
        });
    });	
//Trở Về
$(document).ready(function(e) {
        $('#idTaoCauHoiFileTroVe').on('click',function(e){
        	window.location="./TaoCauHoiGiangVienOL.jsp";
			});
    });
//Ajax
$(document).ready(function(e) {
        $('#idTaoThuCongTroVe').on('click',function(e){
        	window.location="./TaoCauHoiGiangVienOL.jsp";
			});
});
//Ajax 	   
//Boostrap
	$(document).ready(function(){
		  $('.dropdown-submenu a.test').on("click", function(e){
			 $(this).next('ul').toggle();
			 e.stopPropagation();
			 e.preventDefault();
			 });
	});
//Bostrap Thong Tin
	$(document).ready(function() {
			  $('.navbar a.dropdown-toggle').on('click', function(e) {
				 var $el = $(this);
				 var $parent = $(this).offsetParent(".dropdown-menu");
				 $(this).parent("li").toggleClass('open');
				 if(!$parent.parent().hasClass('nav')) {
					  $el.next().css({"top": $el[0].offsetTop, "left": $parent.outerWidth() - 4});
				 }
				 $('.nav li.open').not($(this).parents("li")).removeClass("open");
				 return false;
				});
		});
	
		$(document).ready(function(e) {
            $('.navbar-brand').on('click',function(e){
				$('.menuleft').toggleClass('active-nav');
				e.preventDefault();
			});
        });
		

/*Validate FORM Dang Thông Báo*/   
$(function() {
	$("#error-noidungchinh").hide();
	$("#error-noidungphu").hide();
	var error_nd_chinh = false,error_nd_phu = false;
	var noidungchinh_length,noidungphu_length;
	$("#txtanoidungchinh").focusout(function() {
		check_noidungchinh();
	});
	$("#txtanoidungphu").focusout(function() {
		check_noidungphu();
	});
	function check_noidungchinh() {
		noidungchinh_length = $("#txtanoidungchinh").val().length;
		if(noidungchinh_length ==0) {
			$("#error-noidungchinh").html("Bạn không được bỏ trống phần nội dung chính này.");
			$("#error-noidungchinh").show();
			$("#txtanoidungchinh").css("border","1.5px solid red");
			error_nd_chinh = true;
		}
		else if(noidungchinh_length<20 ||noidungchinh_length>70)
		{
			$("#error-noidungchinh").html("Bạn vui lòng nhập từ 20->70 ký tự cho phần nội dung này.");
			$("#error-noidungchinh").show();
			$("#txtanoidungchinh").css("border","1.5px solid red");
			error_nd_chinh = true;
		}
		else
		{
			$("#error-noidungchinh").hide();
			$("#txtanoidungchinh").css("border","2px solid black");
		}

	}
	function check_noidungphu() {
		noidungphu_length = $("#txtanoidungphu").val().length;
		if(noidungphu_length ==0) {
			$("#error-noidungphu").html("Bạn không được bỏ trống phần nội dung phần này.");
			$("#error-noidungphu").show();
			$("#txtanoidungphu").css("border","1.5px solid red");
			error_nd_phu = true;
		}
		else if(noidungphu_length<40 ||noidungphu_length>150)
		{
			$("#error-noidungphu").html("Bạn vui lòng nhập từ 40->150 ký tự cho phần nội dung này.");
			$("#error-noidungphu").show();
			$("#txtanoidungphu").css("border","1.5px solid red");
			error_nd_phu = true;
		}
		else
		{
			$("#error-noidungphu").hide();
			$("#txtanoidungphu").css("border","2px solid black");
		}
	}
	$("#IDDangThongBao").submit(function(e) {
		error_nd_chinh = false;
		error_nd_phu = false;
		check_noidungchinh();
		check_noidungphu();
		if(error_nd_chinh == false && error_nd_phu == false)
		{
			
		}
		else
		{
			return false;
		}
		
		
	});
});

/*Validate Đổi Mật Khẩu*/
$(function() {
	$("#error-mk-hientai").hide();
	$("#error-mk-moi").hide();
	$("#error-mk-xacnhan").hide();
	var error_matkhau_hientai = false,error_matkhau_moi = false,error_matkhau_xacnhan = false;
	var mk_xacnhan_length,mk_hientai_length,mk_moi_length;
	$("#matkhau_hientai").focusout(function() {
		check_mk_hientai();
	});
	$("#matkhau_moi").focusout(function() {
		check_mk_moi();
	});
	$("#matkhau_xacnhan").focusout(function() {
		check_mk_xacnhan();
	});
	function check_mk_hientai() {
		mk_hientai_length = $("#matkhau_hientai").val().length;
		if(mk_hientai_length ==0) {
			$("#error-mk-hientai").html("Bạn vui lòng nhập mật khẩu hiện tại.");
			$("#error-mk-hientai").show();
			$("#matkhau_hientai").css("border","1.5px solid red");
			error_matkhau_hientai = true;

		}
		else
		{
			$("#error-mk-hientai").hide();
			$("#matkhau_hientai").css("border","1.5px solid black");
		}

	}
	function check_mk_moi() {
		mk_moi_length = $("#matkhau_moi").val().length;
		if(mk_moi_length ==0) {
			$("#error-mk-moi").html("Bạn vui lòng nhập mật khẩu mới.");
			$("#error-mk-moi").show();
			$("#matkhau_moi").css("border","1.5px solid red");
			error_matkhau_moi = true;

		}
		else if(mk_moi_length <10) {
			$("#error-mk-moi").html("Để nâng cao tính bảo mật bạn phải nhập 10 kí tự trở lên.");
			$("#error-mk-moi").show();
			$("#matkhau_moi").css("border","1.5px solid red");
			error_matkhau_moi = true;

		}
		else
		{
			$("#error-mk-moi").hide();
			$("#matkhau_moi").css("border","1.5px solid black");
		}

	}
	function check_mk_xacnhan() {
		mk_xacnhan_length = $("#matkhau_xacnhan").val().length

		if(mk_xacnhan_length ==0) {
			$("#error-mk-xacnhan").html("Bạn vui lòng nhập lại mật khẩu trên.");
			$("#error-mk-xacnhan").show();
			$("#matkhau_xacnhan").css("border","1.5px solid red");
			error_matkhau_xacnhan = true;
		}
		else if(mk_xacnhan_length != mk_moi_length) {
			$("#error-mk-xacnhan").html("Mật khẩu xác nhận không giống mật khẩu trên.");
			$("#error-mk-xacnhan").show();
			$("#matkhau_xacnhan").css("border","1.5px solid red");
			error_matkhau_xacnhan = true;
		}
		else
		{
			$("#error-mk-xacnhan").hide();
			$("#matkhau_xacnhan").css("border","1.5px solid black");
		}
	}
	
	$("#formDoiMatKhau").submit(function(e) {
		

		/*var name =document.getElementById("username").value;
		var password =document.getElementById("password").value;
		
		
		var password = $("#password").val();
		error_username = false;
		error_password = false;

		check_username();
		check_password();

		if(error_username == false && error_password == false ) {
			if(name=="" && password=="123456")
				{
					alert("Hello you are logged in !!");
				}
		} 
		else
		{
			return false;
		}*/
		error_matkhau_hientai = false;
		error_matkhau_moi = false;
		error_matkhau_xacnhan = false;
		check_mk_hientai();
		check_mk_moi();
		check_mk_xacnhan();
		
		if(error_matkhau_hientai == false && error_matkhau_moi == false && error_matkhau_xacnhan == false)
		{
			
		}
		else{
			return false;
			
		}
	});
	
});