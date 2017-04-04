/**
 * huntDetail.js
 */

$(function(){
	huntDetailConfig.init();
});

var huntDetailConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
			this.initConView();
		},

		initConView:function(){
			$.ajax({
	            type: "POST",
	            url: contextPath + "/hunt/findHuntById.do",
	            data:"huntId="+huntId,
	            success: function(data) {
	               if(data){
	               		$("#job").text("职位："+data.huntJob);
	               		$("#salary").text(data.huntSalary+"元");
	               		$("#comp").text("姓名："+data.userName);
	               		$("#date").text(data.huntDate);
	               		$("#duty").text(data.huntSkill);
	               }
	            },
	            error: function(jqXHR, textStatus, errorThrown) {
	                alert(jqXHR.status + " : " + jqXHR.statusText);
	            }
	        });
		}
	};
})();
