/**
 * publishRecruit.js
 */

$(function(){
	publishRecruitConfig.init();
});

var publishRecruitConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
			this.publishRecruit();
		},

		publishRecruit:function(){
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
		            url: contextPath + "/recruit/addRecruit.do",
		            data:"recrJob="+job+"&recrPlace="+place+"&recrDegree="+degree+"&recrSalary="+salary+"&recrDuty="+skill+"&recrDemand="+experience,
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
