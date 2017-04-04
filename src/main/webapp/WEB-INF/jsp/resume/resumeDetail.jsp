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
		
		<link rel="stylesheet" href="<c:url value='/css/resumeDetail.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/resumeDetail.js'/>"></script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content">
			<div class="container">
				<div class="row12 text-center" style="font-size:20px;">
					简历详情
				</div>
				<div style="border:1px solid #ccc;margin-top:10px;"></div>
				<img src="img/head portrait.jpg" class="img-circle center-block" alt="register head portrait" style="width:61px;height:60px;margin-top:10px;">
				<div class="row" style="width:100%;">
					<p class="col-xs-4">姓名：吴彦祖</p>
					<p class="col-xs-3 col-xs-offset-1">性别：男</p>
				</div>
				<div class="row" style="width:100%;">
					<p class="col-xs-12">手机号码：18888888888</p>
				</div>
				<div class="row" style="width:100%;">
					<p class="col-xs-5">出生日期：1994-04</p>
					<p class="col-xs-6">参加工作时间：2015-04</p>
				</div>
				<div class="row" style="width:100%;">
					<p class="col-xs-5">户口所在地：广州</p>
					<p class="col-xs-5">现居住城市：广州</p>
				</div>
				<div class="row" style="width:100%;">
					<p class="col-xs-12">求职岗位：软件工程师</p>
				</div>	
				<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>
				<div class="row" style="width:100%;">
					<p class="col-xs-12">教育背景</p>
				</div>
				<div class="row" style="width:100%;">
					<p class="col-xs-5">2013-09至2017-07</p>
					<p class="col-xs-4">广东药科大学</p>
					<p class="col-xs-2">学士</p>
				</div>
				<div class="row" style="width:100%;">
					<p class="col-xs-12">医药软件服务外包</p>
				</div>
				<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>	
				<div class="row" style="width:100%;">
					<p class="col-xs-12">工作/实习经历：</p>
				</div>
				<div class="row" style="width:100%;">
					<p class="col-xs-12">省略</p>
				</div>	
				<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>	
				<div class="row" style="width:100%;">
					<p class="col-xs-12">项目经验：</p>
				</div>
				<div class="row" style="width:100%;">
					<p class="col-xs-12">省略</p>
				</div>
				<div class="row" style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>	
				<div class="row" style="width:100%;">
					<p class="col-xs-12">自我评价：</p>
				</div>
				<div class="row" style="width:100%;">
					<p class="col-xs-12">省略</p>
				</div>
			</div>
		</div>
	</body>
</html>
