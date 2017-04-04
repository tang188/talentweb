/**
 * keyword.js
 */

$(function(){
	keywordConfig.init();
});

var keywordConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
			this.initKeywords();
			this.doSearch();
		},

		doSearch:function(){
			$("#searchButton").click(function(){
				var keywords = $.trim($("#searchKey").val());
				keywords = keywords.substring(0,keywords.lastIndexOf(","));
				location.href = contextPath + "/keyword/searchResult.do?keywords="+keywords;
			});
		},

		initKeywords:function(){
			//我的关键词
			$.ajax({
	            url: contextPath + "/keyword/findKeywordsPage.do",
	            data:"pageIndex=1&pageSize=7",
	            success: function(data) {
	                if(data){
	                	var str = '';
	                	for(var i=0;i<data.length;i++){
	                		str += '<div class="keywordArea">'
									+	'<span class="keyCon keyTag" alt="'+data[i].keywordId+'" onclick="keywordConfig.keyConClick(this)">'+data[i].keyword+'</span>'
									+	'<span class="keyIcon glyphicon glyphicon-minus-sign pull-right" onclick="keywordConfig.keyIconClick(this)"></span>'
									+'</div>';
	                	}
	                	$("#myKeywordView").append(str);
	                }
	            },
	            error: function(jqXHR, textStatus, errorThrown) {
	                
	            }
	        });

	        //热词
			$.ajax({
	            url: contextPath + "/keyword/findAllKeywordsPage.do",
	            data:"pageIndex=1&pageSize=7",
	            success: function(data) {
	                if(data){
	                	var str = '';
	                	for(var i=0;i<data.length;i++){
	                		str += '<div class="keywordArea">'
									+	'<span class="keyCon keyTag" alt="'+data[i].keywordId+'" onclick="keywordConfig.hkeyConClick(this)">'+data[i].keyword+'</span>'
									+	'<span class="keyIcon glyphicon glyphicon-minus-sign pull-right" onclick="keywordConfig.hkeyIconClick(this)"></span>'
									+'</div>';
	                	}
	                	$("#hotKeywordView").append(str);
	                }
	            },
	            error: function(jqXHR, textStatus, errorThrown) {
	                
	            }
	        });
		},

		keyIcon2Click:function(){
			var inputData = window.prompt("请输入关键词");
			var str = '<div class="keywordArea">'
					+	'<span class="keyCon" onclick="keywordConfig.keyConClick(this)">'+inputData+'</span>'
					+	'<span class="keyIcon glyphicon glyphicon-minus-sign pull-right" onclick="keywordConfig.keyIconClick(this)"></span>'
					+'</div>';
			$("#myKeywordView").append(str);
		},

		keyConClick:function(obj){
			var con = $(obj).text();
			var keywordId = $(obj).attr("alt");
			$("#searchKey").val($("#searchKey").val()+con+",");

			var flag = $(obj).hasClass("keyTag");
			if(flag){
				$.ajax({
		            url: contextPath + "/keyword/updateKeywordHeat.do",
		            data:"keywordId="+keywordId,
		            success: function(data) {
		                
		            },
		            error: function(jqXHR, textStatus, errorThrown) {
		                
		            }
		        });
			}else{
				$.ajax({
		            url: contextPath + "/keyword/addKeyword.do",
		            data:"keyword="+con,
		            success: function(data) {
		                
		            },
		            error: function(jqXHR, textStatus, errorThrown) {
		                
		            }
		        });
			}
		},

		keyIconClick:function(obj){
			$(obj).parent().css({
				"display":"none"
			});
		},

		hkeyIcon2Click:function(){
			var inputData = window.prompt("请输入关键词");
			var str = '<div class="keywordArea">'
					+	'<span class="keyCon" onclick="keywordConfig.hkeyConClick(this)">'+inputData+'</span>'
					+	'<span class="keyIcon glyphicon glyphicon-minus-sign pull-right" onclick="keywordConfig.hkeyIconClick(this)"></span>'
					+'</div>';
			$("#hotKeywordView").append(str);
		},

		hkeyConClick:function(obj){
			var con = $(obj).text();
			var keywordId = $(obj).attr("alt");
			$("#searchKey").val($("#searchKey").val()+con+",");

			var flag = $(obj).hasClass("keyTag");
			if(flag){
				$.ajax({
		            url: contextPath + "/keyword/updateKeywordHeat.do",
		            data:"keywordId="+keywordId,
		            success: function(data) {
		                
		            },
		            error: function(jqXHR, textStatus, errorThrown) {
		                
		            }
		        });
			}else{
				$.ajax({
		            url: contextPath + "/keyword/addKeyword.do",
		            data:"keyword="+con,
		            success: function(data) {
		                
		            },
		            error: function(jqXHR, textStatus, errorThrown) {
		                
		            }
		        });
			}
		},

		hkeyIconClick:function(obj){
			$(obj).parent().css({
				"display":"none"
			});
		}
	};
})();
