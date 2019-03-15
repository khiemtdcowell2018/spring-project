/*
 *  Document   : readyLogin.js
 *  Author     : khiemtd90@gmail.com
 *  Description: Custom javascript code used in Login page
 */

var ReadyLogin = function() {

	return {
		init : function() {
			/*
			 * Jquery Validation, Check out more examples and documentation at
			 * https://github.com/jzaefferer/jquery-validation
			 */

			/* Login form - Initialize Validation */
			$('#form-login')
					.validate(
							{
								errorClass : 'help-block animation-slideUp',
								errorElement : 'div',
								errorPlacement : function(error, e) {
									e.parents('.form-group > div')
											.append(error);
								},
								highlight : function(e) {
									$(e).closest('.form-group').removeClass(
											'has-success has-error').addClass(
											'has-error');
									$(e).closest('.help-block').remove();
								},
								success : function(e) {
									e.closest('.form-group').removeClass(
											'has-success has-error');
									e.closest('.help-block').remove();
								},
								rules : {
									'loginId' : {
										required : true,
										minlength: 5
									},
									'loginPassword' : {
										required : true
									}
								},
								messages : {
									'loginId' : {
										required: $('#loginId').attr('placeholder'),
										minlength: $('#loginId').attr('min_length_check')
										},
									'loginPassword' : {
										required : $('#loginPassword').attr('placeholder')
									}
								}
							});
		}
	};
}();