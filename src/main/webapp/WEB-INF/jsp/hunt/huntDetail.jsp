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
		
		<link rel="stylesheet" href="<c:url value='/css/huntDetail.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/huntDetail.js'/>"></script>
		<script type="text/javascript">
			var huntId = ${huntId};
		</script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content">
			<div class="container">
				<h2>求职详情</h2>
				<hr/>
				<div class="listCon">
					<div class="listCon1 row">
						<h3 class="col-md-10" id="job"></h3>
						<p class="col-md-2 text-right" id="salary"></p>
					</div>
					<div class="listCon2 row">
						<h4 class="col-md-9" id="comp"></h4>
						<p class="col-md-3 text-right" id="date"></p>
					</div>
				</div>
				<div class="detCon">
					<h3>自我描述</h3>
					<hr/>
					<h4>专业技能：</h4>
					<p id="duty"></p>
				</div>
			</div>
		</div>
	</body>
</html>
