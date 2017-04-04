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
		
		<link rel="stylesheet" href="<c:url value='/css/login.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/login.js'/>"></script>
	</head>
	<body>
		<a id="loginLink" data-toggle="modal" data-target="#myModal1"></a>

		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content" style="min-height: 480px;">
		      <div class="modal-header">
		        <h4 class="modal-title text-center" id="myModalLabel">登录</h4>
		      </div>
		      <div class="modal-body">
		        <img src="/images/head portrait.jpg" class="img-responsive center-block" alt="register head portrait">
				<form class="form-horizontal" action="/login/login.do" method="post">
					<div class="form-group">
						<div class="col-xs-1 col-xs-offset-3 text-right">
							<img src="/images/photo.png" alt="photo">
						</div>
						<div class="col-xs-6">
							<input type="email" class="form-control" id="registerInputEmail"
								placeholder="邮箱" name="email">
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-1 col-xs-offset-3 text-right">
							<img src="/images/photo.png" alt="photo">
						</div>
						<div class="col-xs-6">
							<input type="password" class="form-control"
								id="registerInputPassword" placeholder="密码" name="password">
						</div>
					</div>
					<div class="radio col-xs-3 col-xs-offset-4">
						<label> <input type="radio" name="optionsRadios"
							id="optionsRadios1" value="1" checked> 个人&nbsp;&nbsp;
						</label> <label> <input type="radio" name="optionsRadios"
							id="optionsRadios2" value="2"> 企业
						</label>
						<span style="color: red">${msg }</span>
					</div>
					<div class="col-xs-4 col-xs-offset-4 nologin">
						<a href="<c:url value='/page/findPassword.do'/>">忘记密码</a> 
						<a href="<c:url value='/page/register.do'/>" class="col-xs-offset-3">快速注册</a>
					</div>
					<button class="btn btn-default col-xs-3 col-xs-offset-5" type="submit">登录</button>
				</form>
		      </div>
		  </div>
		</div>
	</body>
</html>
