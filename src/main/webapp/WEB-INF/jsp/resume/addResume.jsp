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
		
		<link rel="stylesheet" href="<c:url value='/css/addResume.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/addResume.js'/>"></script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content">
			<div class="container">
				<div class="row13 text-center" style="font-size:20px;">
					基本信息
				</div>
				<div style="border:1px solid #ccc;margin-top:15px;margin-bottom:10px;"></div>
				<div style="display:inline-block;margin-top:15px;">
					<img src="/images/head portrait.jpg" class="img-circle" alt="register head portrait" style="width:71px;height:70px;display:inline-block;">
				</div>
				<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>
				<div style="display:inline-block;margin-top:5px;">
					<span>姓名：</span>
					<input type="text" placeholder="姓名">
				</div>
				<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>
				<div style="display:inline-block;margin-top:15px;">
					<span>性别：</span>
					<div class="radio" style="display: inline;">
					  <label>
					    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
					    男&nbsp;&nbsp;
					  </label>
					  <label>
					    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
					    女
					  </label>
					</div>
				</div>
				<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>
				<div style="display:inline-block;margin-top:15px;">
					<span>出生日期：</span>
					
				</div>
				<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>
				<div style="display:inline-block;margin-top:15px;">
					<span>参加工作时间：</span>
					
				</div>
				<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>
				<div style="display:inline-block;margin-top:5px;">
					<span>现居住城市：</span>
					<input type="text" placeholder="城市">
				</div>
				<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>
				<div style="display:inline-block;margin-top:5px;">
					<span>户口所在地：</span>
					<input type="text" placeholder="户口地">
				</div>
				<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>
				<div style="display:inline-block;margin-top:5px;">
					<span>手机号码：</span>
					<input type="text" placeholder="手机">
				</div>
				<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>
				<div style="display:inline-block;margin-top:5px;">
					<span>邮箱地址：</span>
					<div style="float:right;">
						<span>wyy793720956@163.com</span>
					</div>
				</div>
				<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>					
				<button class="next center-block" style="margin-top:10px;">
					<a href="#tab13_1" data-toggle="tab" type="button">下一步</a>
				</button>
			</div>
		</div>
	</body>
</html>
