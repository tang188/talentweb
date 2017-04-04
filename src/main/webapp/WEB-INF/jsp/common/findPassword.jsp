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
		
		<link rel="stylesheet" href="<c:url value='/css/findPassword.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/findPassword.js'/>"></script>
	</head>
	<body>
		<a id="regLink" data-toggle="modal" data-target="#myModal1"></a>

		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content" style="min-height: 480px;">
		      <div class="modal-header">
		        <h4 class="modal-title text-center" id="myModalLabel">找回密码</h4>
		      </div>
		      <div class="modal-body">
		        <img src="/images/head portrait.jpg" class="img-responsive center-block" alt="register head portrait">
				<form class="form-horizontal" method="post" action="#">
					<div class="form-group">
						<div class="col-xs-1 col-xs-offset-2 text-right">
							<img src="/images/photo.png" alt="photo">
						</div>
						<div class="col-xs-6">
							<input type="email" class="form-control" id="registerInputEmail" placeholder="登录邮箱">
						</div>			
					</div>
					<div class="form-group">
						<div class="col-xs-1 col-xs-offset-2 text-right">
							<img src="/images/photo.png" alt="photo">
						</div>
						<div class="col-xs-3">
							<input type="text" class="form-control" id="registerInputIdentifyingCode" placeholder="验证码">
						</div>
						<div class="col-xs-2"  style="padding-left:0">
							<img id="verifiedCodeImg" src="<c:url value='/page/verifiedCode.do'/>">
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-1 col-xs-offset-2 text-right">
							<img src="/images/photo.png" alt="photo">
						</div>
						<div class="col-xs-6">
							<input type="text" class="form-control" id="registerInputNewPassword" placeholder="新密码">
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-1 col-xs-offset-2 text-right">
							<img src="/images/photo.png" alt="photo">
						</div>
						<div class="col-xs-6">
							<input type="password" class="form-control" id="registerRepeatPassword" placeholder="确认新密码">
						</div>
					</div>
					<button class="btn btn-default col-xs-3 col-xs-offset-5" type="submit">找回密码</button>
				</form>
		      </div>
		  </div>
		</div>
	</body>
</html>
