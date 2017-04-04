/**
 * messageDetail.js
 */

$(function(){
	messageDetailConfig.init();
});

var messageDetailConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
			this.initMessDetailView();
		},

		initMessDetailView:function(){
			$.ajax({
	            type: "POST",
	            url: "/message/findMessageById.do",
	            data:"messId="+messId,
	            success: function(data) {
	               if(data){
	               		$("#topic").text(data.messTopic);
	               		$("#date").text(data.messDate);
	               		$("#source").text(data.resource);
	               		$("#messCon").text(data.content);
	               }
	            },
	            error: function(jqXHR, textStatus, errorThrown) {
	                alert(jqXHR.status + " : " + jqXHR.statusText);
	            }
	        });
		}
	};
})();
