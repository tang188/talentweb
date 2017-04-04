/**
 * changeUserName.js
 */

$(function(){
	changeUserNameConfig.init();
});

var changeUserNameConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
			this.doChange();
		},

		doChange:function(){
			$("#sureBtn").click(function(){
				$.ajax({
		            type: "POST",
		            url: "/user/updateUserName.do",
		            data:"userName="+$("#nameVal").val(),
		            success: function(data) {
	               		alert("更改成功！");
	               		location.href = location.href;
		            },
		            error: function(jqXHR, textStatus, errorThrown) {
		                alert(jqXHR.status + " : " + jqXHR.statusText);
		                location.href = location.href;
		            }
		        });
			});
		}
	};
})();
