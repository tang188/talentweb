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
		
		<link rel="stylesheet" href="<c:url value='/css/messageDetail.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/messageDetail.js'/>"></script>
		<script type="text/javascript">
			var messId = ${messId};
		</script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content">
			<div class="container">
				<h2>消息详情</h2>
				<hr/>
				<div id="messHead">
					<h3 id="topic"></h3>
					<p><span id="date"></span> &nbsp;&nbsp; 来源：<span id="source"></span></p>
				</div>
				<div id="messCon">
					
				</div>
			</div>
		</div>
	</body>
</html>
