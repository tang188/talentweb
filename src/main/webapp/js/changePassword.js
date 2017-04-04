/**
 * changePassword.js
 */

$(function(){
	changePasswordConfig.init();
});

var changePasswordConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
			//this.doChange();
			this.validate();
		},

		validate:function(){
			$("#cform").submit(function(){
				var new_password = $("#newPassword").val();
				var confirm_password = $("#confirmPassword").val();
				var current_password = $("#password").val();

				if(new_password==="" || confirm_password==="" || current_password===""){
					alert("输入不能为空!");
					return false;
				}
				if(new_password!==confirm_password){
					alert("两次输入的密码不一致，请从新输入!");
					return false;
				}
			});
		},

		doChange:function(){
			$("#sureBtn").click(function(){
				var current_password = $("#password").val();
				var new_password = $("#newPassword").val();
				var confirm_password = $("#confirmPassword").val();

				if(new_password!==confirm_password){
					alert("两次输入的密码不一致，请从新输入!");
					return false;
				}

				$.ajax({
		            type: "POST",
		            url: contextPath + "/user/updateUserPassword.do",
		            data:"current_password="+current_password+"&new_password="+new_password+"&confirm_password="+confirm_password,
		            success: function(data) {
	               		
		            },
		            error: function(jqXHR, textStatus, errorThrown) {
		                alert(jqXHR.status + " : " + jqXHR.statusText);
		            }
		        });
			});
		}
	};
})();
