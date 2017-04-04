/**
 * recruitList.js
 */

$(function(){
	recruitListConfig.init();
});

var recruitListConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
			this.generateZPXXView();
		},

		generateZPXXView:function(){
			//初始化
			var pageSize = 10;
			renderView(1,pageSize);

			var totalPages = Math.ceil(totalCount/pageSize);
			var count = 1;
			$("#preBtn").click(function(){
				if(count>1){
					count--;
					renderView(count,pageSize);
				}
			});

			$("#nextBtn").click(function(){
				if(count<totalPages){
					count++;
					renderView(count,pageSize);
				}
			});

			function renderView(pageIndex,pageSize){
				$.ajax({
		            type: "POST",
		            url: "/recruit/findRecruitsByPage.do",
		            data:"pageIndex="+pageIndex+"&pageSize="+pageSize,
		            success: function(data) {
		               if(data){
		               		var conStr = '';
		               		for(var i=0;i<data.length;i++){
		               			conStr += '<div class="zpxx">'
											+	'<h3><a href="'+contextPath+'/recruit/recruitDetail.do?recrId='+data[i].recrId+'">'+data[i].recrJob+'</a></h3>'
											+	'<p>'+data[i].compName+'</p>'
											+'</div>';
		               			
		               		}
		               		$("#zpxxView").html(conStr);
		               }
		            },
		            error: function(jqXHR, textStatus, errorThrown) {
		                alert(jqXHR.status + " : " + jqXHR.statusText);
		            }
		        });
		    }
		}
	};
})();
