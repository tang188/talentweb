/**
 * feedback.js
 */

$(function(){
	feedbackConfig.init();
});

var feedbackConfig = (function(){
	var currentObj = null;

	return {
		init: function(){
			currentObj = this;
			
		},

	};
})();
