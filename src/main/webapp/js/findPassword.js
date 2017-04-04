/**
 * findPassword.js
 */

$(function(){
	findPasswordConfig.init();
});

var findPasswordConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
			this.changeVerifiedCode();
			this.popupModal();
		},

		changeVerifiedCode : function(){
			//点击链接更换验证码图片.
			$("#verifiedCodeImg").click(function(){
				$("#verifiedCodeImg").attr("src",contextPath + "/page/verifiedCode.do?"+new Date().getTime());
			});
		},

		popupModal:function(){
			$("#regLink").click();
		}
	};
})();
