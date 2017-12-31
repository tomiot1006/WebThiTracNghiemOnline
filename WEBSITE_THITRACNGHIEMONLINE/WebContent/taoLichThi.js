$(document).ready(function() {

	$.validator.setDefaults({
		errorClass: 'help-block',
		highlight: function(element) {
			$(element)
			.closest('#formTaoLichThi')
			.addClass('has-error');
		},
		unhighlight: function(element) {
			$(element)
			.closest('#formTaoLichThi')
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
	
	$("#formTaoLichThi").validate({
		rules : {
			maMonThi : {
				required : true,	
				minlength: 2,
			},

			monThi:{
				required:true,
				minlength:2,
			},
			ngayThi : {
				required: true,				
			},
			thoiGianThi:{
				required: true,
			},
			
			
		},
		messages : {
			maMonThi : {
				required : "Required!",
				minlength: "At least 2 characters !",
			},
			monThi : {
				required : "Required!",
				minlength: "At least 2 characters !",
			},
			ngayThi: {
				 required:"Required!",              
			},
			thoiGianThi:{
				required:"Required!",
			},
		},
	});
});