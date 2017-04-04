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
		
		<link rel="stylesheet" href="<c:url value='/css/changePassword.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/changePassword.js'/>"></script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content">
			<div class="container">
				<h2>修改密码</h2>
				<hr/>
				<form id="cform" class="form-horizontal" method="post" action="<c:url value='/user/updateUserPassword.do'/>">
					<div class="form-group">
						<div class="col-xs-6 col-xs-offset-3">
							<input type="password" class="form-control" name="current_password" id="password" placeholder="当前密码">
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-6 col-xs-offset-3">
							<input type="password" class="form-control" name="new_password" id="newPassword" placeholder="新密码">
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-6 col-xs-offset-3">
							<input type="password" class="form-control" name="confirm_password" id="confirmPassword" placeholder="确认新密码">
						</div>
					</div>
					<input id="sureBtn" class="btn btn-default col-xs-2 col-xs-offset-5" type="submit" value="确定"/>
				</form>
			</div>
		</div>
	</body>
</html>
