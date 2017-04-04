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
		
		<link rel="stylesheet" href="<c:url value='/css/recruitDetail.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/recruitDetail.js'/>"></script>
		<script type="text/javascript">
			var recrId = ${recrId};
		</script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content">
			<div id="conView" class="container">
				<div class="listCon">
					<div class="listCon1 row">
						<h3 class="col-md-10" id="job"></h3>
						<p class="col-md-2 text-right" id="salary"></p>
					</div>
					<div class="listCon2 row">
						<h4 class="col-md-9" id="comp"></h4>
						<p class="col-md-3 text-right" id="date"></p>
					</div>
					<div class="listCon3 row">
						<p>上班地点：<span  id="place"></span></p>
					</div>
				</div>
				<div class="detCon">
					<h3>职位描述</h3>
					<hr/>
					<h4>岗位职责：</h4>
					<p id="duty"></p>
					<hr/>
					<h4>岗位要求：</h4>
					<p id="demand"></p>
				</div>
			</div>
		</div>
	</body>
</html>
