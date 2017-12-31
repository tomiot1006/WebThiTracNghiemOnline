$(document).ready(function() {

	$.validator.setDefaults({
		errorClass: 'help-block',
		highlight: function(element) {
			$(element)
			.closest('#TaoThongBao')
			.addClass('has-error');
		},
		unhighlight: function(element) {
			$(element)
			.closest('#TaoThongBao')
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
	
	
	
	$("#TaoThongBao").validate({
		rules : {
			tieudeThongBao : {
				required : true,	
				minlength: 2,
			},

			noidungThongBao:{
				required:true,
				minlength:2,
			},
			'ckb[]' : {
				required: true,				
			},
		},
		messages : {
			tieudeThongBao : {
				required : "Required!",
				minlength: "At least 2 characters !",
			},
			noidungThongBao : {
				required : "Required!",
				minlength: "At least 2 characters !",
			},
			'ckb[]': {
				 required: "Please choose at least 1 field !!",	              
			},
			
		},
	});
});