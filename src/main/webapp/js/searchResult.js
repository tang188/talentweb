/**
 * searchResult.js
 */

$(function(){
	searchResultConfig.init();
});

var searchResultConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
			this.initList();
		},

		initList:function(){
			var pageSize = 10;
			generateList(1,pageSize);

			var count = 1;
			$("#preBtn").click(function(){
				if(count>1){
					count--;
					generateList(count,pageSize);
				}
			});

			$("#nextBtn").click(function(){
				count++;
				generateList(count,pageSize);
			});

			function generateList(pageIndex,pageSize){
				$.ajax({
		            type: "POST",
		            url: contextPath + "/recruit/findRecruitPages.do",
		            data:"pageIndex="+pageIndex+"&pageSize="+pageSize+"&keywords="+keywords,
		            success: function(data) {
		               if(data){
		               		var str = '';
		               		for(var i=0;i<data.length;i++){
		               			str += '<div class="listCon">'
									+'	<div class="listCon1 row">'
									+'		<h3 class="col-md-10"><a href="'+contextPath+'/recruit/recruitDetail.do?recrId='+data[i].recrId+'">'+data[i].recrJob+'</a></h3>'
									+'		<p class="col-md-2 text-right">'+data[i].recrSalary+'元</p>'
									+'	</div>'
									+'	<div class="listCon2 row">'
									+'		<h4 class="col-md-9">'+data[i].compName+'</h4>'
									+'		<p class="col-md-3 text-right">'+data[i].recrDate+'</p>'
									+'	</div>'
									+'	<div class="listCon3 row">'
									+'		<p>上班地点：'+data[i].recrPlace+'</p>'
									+'	</div>'
									+'</div>';
		               		}
		               		$("#listConView").html(str);
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
