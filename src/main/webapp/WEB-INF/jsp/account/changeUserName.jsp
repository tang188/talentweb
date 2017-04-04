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
		
		<link rel="stylesheet" href="<c:url value='/css/changeUserName.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/changeUserName.js'/>"></script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content">
			<div class="container">
				<h2>修改用户名</h2>
				<hr/>
				<form class="form-horizontal">
					<div class="form-group">
						<div class="col-xs-6 col-xs-offset-3">
							<input type="text" class="form-control" id="nameVal" name="userName" value="${current_user.userName}">
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-6 col-xs-offset-3">
							<label>以中文或者英文字母开头，限4-16个字符，一个汉字为两个字符</label>
						</div>
					</div>
					<button id="sureBtn" class="btn btn-default col-xs-2 col-xs-offset-5">确定</button>
				</form>
			</div>
		</div>
	</body>
</html>
