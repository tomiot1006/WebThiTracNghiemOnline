$(document).ready(function() {

	$.validator.setDefaults({
		errorClass: 'help-block',
		highlight: function(element) {
			$(element)
			.closest('#formTaoDeThi')
			.addClass('has-error');
		},
		unhighlight: function(element) {
			$(element)
			.closest('#formTaoDeThi')
			.removeClass('has-error');
		},
		errorPlacement: function (error, element) {
			if (element.prop('type') === 'text') {
				error.insertAfter(element.parent());
			} else {
				error.insertAfter(element);
			}
		}
		
	});
	
	$("#formTaoDeThi").validate({
		rules : {
			monThi : {
				required : true,	
				minlength: 2,
			},

			maDeThi:{
				required:true,
				minlength:2,
			},
			ngayThi : {
				required: true,				
			},
			thoiGianLamBai:{
				required: true,
			},
			'soCauHoi[]' : {
				required: true,				
			},

			
			
		},
		messages : {
			maDeThi : {
				required : "Required !",
				minlength: "At least 2 characters",
			},
			monThi : {
				required : "Required !",
				minlength: "At least 2 characters",
			},
			ngayThi: {
				 required: "Required !!",	              
			},
			thoiGianLamBai: {
				 required: "Required !!",	              
			},
			soCauHoi: {
				 required: "Required !!",	              
			},
		
		},
	});
});