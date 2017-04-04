/**
 * index.js
 */

$(function(){
	indexConfig.init();
});

var indexConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
			this.generateZPXXView();
		},

		generateZPXXView:function(){
			$.ajax({
	            type: "POST",
	            url: "/recruit/findRecruitsByPage.do",
	            data:"pageIndex=1&pageSize=10",
	            success: function(data) {
	               if(data){
	               		for(var i=0;i<data.length;i++){
	               			var conStr = '<div class="zpxx">'
										+	'<h3><a href="'+contextPath+'/recruit/recruitDetail.do?recrId='+data[i].recrId+'">'+data[i].recrJob+'</a></h3>'
										+	'<p>'+data[i].compName+'</p>'
										+'</div>';
	               			$("#zpxxView").append(conStr);
	               		}
	               }
	            },
	            error: function(jqXHR, textStatus, errorThrown) {
	                alert(jqXHR.status + " : " + jqXHR.statusText);
	            }
	        });
		}
	};
})();
