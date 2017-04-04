/**
 * myDeliver.js
 */

$(function(){
	myDeliverConfig.init();
});

var myDeliverConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
			this.initConView();
		},

		initConView:function(){
			$.ajax({
	            type: "POST",
	            url: contextPath + "/hunt/findHunts.do",
	            success: function(data) {
	               if(data){
	               		var str = '';
	               		for(var i=0;i<data.length;i++){
	               			str+='<div class="listCon">职位:<a href="'+contextPath+'/hunt/huntDetail.do?huntId='+data[i].huntId+'">'+data[i].huntJob+'</a></div>';
	               		}
	               		$("#listView").html(str);
	               }
	            },
	            error: function(jqXHR, textStatus, errorThrown) {
	                alert(jqXHR.status + " : " + jqXHR.statusText);
	            }
	        });
		}
	};
})();
