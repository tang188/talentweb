/**
 * message.js
 */

$(function(){
	messageConfig.init();
});

var messageConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
		},

		initMessList:function(messType){
			$.ajax({
	            type: "POST",
	            url: "/message/findMessage.do",
	            data:"messType="+messType,
	            success: function(data) {
	               if(data){
	               		var conStr = '';
	               		for(var i=0;i<data.length;i++){
	               			conStr += '<div class="mess">'
									+	'<h3><a href="'+contextPath+'/message/messageDetail.do?messId='+data[i].messId+'">'+data[i].messTopic+'</a></h3>'
									+	'<div class="news">'+data[i].content+'</div>'
									+'</div>';
	               		}
	               		$("#MessView").html(conStr);
	               }
	            },
	            error: function(jqXHR, textStatus, errorThrown) {
	                alert(jqXHR.status + " : " + jqXHR.statusText);
	            }
	        });
		}
	};
})();
