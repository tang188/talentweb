/**
 * recruitDetail.js
 */

$(function(){
	recruitDetailConfig.init();
});

var recruitDetailConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
			this.initConView();
		},

		initConView:function(){
			$.ajax({
	            type: "POST",
	            url: contextPath + "/recruit/findRecruitsById.do",
	            data:"recrId="+recrId,
	            success: function(data) {
	               if(data){
	               		$("#job").text(data.recrJob);
	               		$("#salary").text(data.recrSalary+"元");
	               		$("#comp").text(data.compName);
	               		$("#date").text(data.recrDate);
	               		$("#place").text(data.recrPlace);
	               		$("#duty").text(data.recrDuty);
	               		$("#demand").text(data.recrDemand);
	               }
	            },
	            error: function(jqXHR, textStatus, errorThrown) {
	                alert(jqXHR.status + " : " + jqXHR.statusText);
	            }
	        });
		}
	};
})();
