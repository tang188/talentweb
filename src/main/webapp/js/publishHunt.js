/**
 * publishHunt.js
 */

$(function(){
	publishHuntConfig.init();
});

var publishHuntConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
			this.publishHunt();
		},

		publishHunt:function(){
			$("#saveButton").click(function(){
				var job = $("#addJob input").val();
				var place = $("#addPlace input").val();
				var degree = $("#addDegree input").val();
				var salary_l = $("#addSalary_l select").val();
				var salary_h = $("#addSalary_h select").val();
				var salary = salary_l+"-"+salary_h;
				var skill = $("#addSkill textarea").val();
				var experience = $("#addExperience textarea").val();

				$.ajax({
		            type: "POST",
		            url: contextPath + "/hunt/addHunt.do",
		            data:"huntJob="+job+"&huntPlace="+place+"&huntDegree="+degree+"&huntSalary="+salary+"&huntSkill="+skill+"&huntExperience="+experience,
		            success: function(data) {
		               	alert("发布成功!");
		                location.href = location.href;
		            },
		            error: function(jqXHR, textStatus, errorThrown) {
		                alert(jqXHR.status + " : " + jqXHR.statusText);
		                location.href = location.href;
		            }
		        });
			});
		}
	};
})();
