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
		
		<link rel="stylesheet" href="<c:url value='/css/accountInfo.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/accountInfo.js'/>"></script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content" class="container">
			<h2>我的账户</h2>
			<div class="col-md-6 col-md-offset-4">
				<hr/>
				<div style="display:inline-block;margin-top:15px;" class="text-center col-md-offset-4">
					<img src="<c:url value='/images/head portrait.jpg'/>" class="img-circle" alt="register head portrait" style="width:71px;height:70px;display:inline-block;">
				</div>
				<hr/>
				<div style="margin-top:5px;margin-bottom:10px;">
					<span>用户名</span>
					<div style="float:right;">
						<span>${current_user.userName}</span>
						<div class="glyphicon glyphicon-chevron-right"></div>
					</div>
				</div>
				<hr/>
				<div style="margin-top:5px;margin-bottom:10px;">
					<span>密码</span>
					<div style="float:right;">
						<span><a href="<c:url value='/page/changePassword.do'/>">修改</a></span>
						<div class="glyphicon glyphicon-chevron-right"></div>
					</div>
				</div>
				<hr/>
				<div style="margin-top:5px;margin-bottom:10px;">
					<span>已绑定邮箱</span>
					<div style="float:right;">
						<span>${current_user.userEmail}</span>
					</div>
				</div>
				<hr/>
				<div style="margin-top:15px;">
					<a class="btn btn-default col-md-offset-4" href="<c:url value='/page/logout.do'/>">退出当前帐号</a>
				</div>
			</div>
		</div>
	</body>
</html>
