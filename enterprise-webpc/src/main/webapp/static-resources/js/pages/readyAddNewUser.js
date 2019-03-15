/*
 *  Document   : readyAddNewUser.js
 *  Author     : khiemtd90@gmail.com
 *  Description: Client javascript form validation
 */

var AddNewUserForm = function() {

	return {
		init : function() {
			/*
			 * Jquery Validation, Check out more examples and documentation at
			 * https://github.com/jzaefferer/jquery-validation
			 */

			/* Add New User - Initialize Validation */
			$('#add-new-user-form').validate(
					{
						errorClass : 'help-block animation-slideUp',
						errorElement : 'div',
						errorPlacement : function(error, e) {
							console.log(e.attr('id'));
							if (e.attr('id') === 'nameMei'
									|| e.attr('id') === 'nameSei') {
								e.parents('.form-group > div > div').append(
										error);
							} else {
								e.parents('.form-group > div').append(error);
							}
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
								minlength : 5,
								maxlength : 50
							},
							'loginPassword' : {
								required : true,
								minlength : 5,
								maxlength : 100
							},
							'reLoginPassword' : {
								required : true,
								minlength : 5,
								maxlength : 100,
								equalTo : '#loginPassword'
							},
							'nameMei' : {
								required : true,
								minlength : 1,
								maxlength : 50
							},
							'nameSei' : {
								required : true,
								minlength : 1,
								maxlength : 50
							},
							'mailAddress' : {
								required : true,
								minlength : 5,
								maxlength : 50,
								email : true
							},
							'phoneNumber' : {
								required : true,
								minlength : 9,
								maxlength : 20,
								number : true
							},
							'homeAddress' : {
								required : true,
								minlength : 10,
								maxlength : 100
							},
							'postNumber' : {
								required : true,
								minlength : 5,
								maxlength : 10,
								number : true
							}
						},
						messages : {
							'loginId' : {
								required : $('#loginId').attr(
										'required-message'),
								minlength : $('#loginId').attr(
										'range-length-message'),
								maxlength : $('#loginId').attr(
										'range-length-message')
							},
							'loginPassword' : {
								required : $('#loginPassword').attr(
										'required-message'),
								minlength : $('#loginPassword').attr(
										'range-length-message'),
								maxlength : $('#loginPassword').attr(
										'range-length-message')
							},
							'reLoginPassword' : {
								required : $('#reLoginPassword').attr(
										'required-message'),
								minlength : $('#reLoginPassword').attr(
										'range-length-message'),
								maxlength : $('#reLoginPassword').attr(
										'range-length-message'),
								equalTo : $('#reLoginPassword').attr(
										'not-matched-message')
							},
							'nameMei' : {
								required : $("#nameMei").attr(
										'required-message'),
								minlength : $('#nameMei').attr(
										'range-length-message'),
								maxlength : $('#nameMei').attr(
										'range-length-message')
							},
							'nameSei' : {
								required : $("#nameSei").attr(
										'required-message'),
								minlength : $('#nameSei').attr(
										'range-length-message'),
								maxlength : $('#nameSei').attr(
										'range-length-message')
							},
							'mailAddress' : {
								required : $("#mailAddress").attr(
										'required-message'),
								minlength : $('#mailAddress').attr(
										'range-length-message'),
								maxlength : $('#mailAddress').attr(
										'range-length-message'),
								email : $('#mailAddress').attr(
										'invalid-format-message')
							},
							'phoneNumber' : {
								required : $("#phoneNumber").attr(
										'required-message'),
								minlength : $("#phoneNumber").attr(
										'range-length-message'),
								maxlength : $("#phoneNumber").attr(
										'range-length-message'),
								number : $('#mailAddress').attr(
										'invalid-format-message')
							},
							'homeAddress' : {
								required : $("#homeAddress").attr(
										'required-message'),
								minlength : $("#homeAddress").attr(
										'range-length-message'),
								maxlength : $("#homeAddress").attr(
										'range-length-message')
							},
							'postNumber' : {
								required : $("#postNumber").attr(
										'required-message'),
								minlength : $("#postNumber").attr(
										'range-length-message'),
								maxlength : $("#postNumber").attr(
										'range-length-message'),
								number : $("#postNumber").attr(
										'invalid-format-message')
							}
						}
					});
		}
	};
}();