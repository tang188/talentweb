<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<title>万才网</title>
		<meta charset="utf-8">
		<meta http-equiv="keywords" content="万才网">
		<meta http-equiv="description" content="万才网">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="<c:url value='/images/favicon.ico'/>" type="image/x-icon"/>
		
		<link rel="stylesheet" href="<c:url value='/css/message.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/message.js'/>"></script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content">
			<div class="container">
				<h2>招聘消息</h2>
				<div id="MessView">
					<!--<div class="mess">
						<h3><a href="<c:url value='/message/messageDetail.do?messId=1'/>">深圳腾讯公司：</a></h3>
						<div class="news">恭喜你，HR看中你啦！快去面试吧！！！！……</div>
					</div>-->
					
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		messageConfig.initMessList("recruit");
	</script>
</html>
