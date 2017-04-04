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
		
		<link rel="stylesheet" href="<c:url value='/css/myResume.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/myResume.js'/>"></script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content">
			<div class="container">
				<h2>我的简历</h2>
				<div style="border:1px solid #ccc;margin-top:10px;"></div>

				<div class="myresume">
					<div style="border:1px solid #ccc;margin-top:10px;"></div>
					<div class="result">
						<div class="row">
							<div class="occupation col-xs-3">我的简历1</div>
						</div>
						<div class="row" style="margin-top:5px;">
							<div class="company col-xs-4">软件工程师</div>
							<div class="date col-xs-2 col-xs-offset-6"><a href="#tab12" data-toggle="tab">修改</a></div>
						</div>
						<div style="border:1px solid #ccc;margin-top:5px;"></div>
					</div>
				</div>
				<div class="myresume">
					<div style="border:1px solid #ccc;margin-top:10px;"></div>
					<div class="result">
						<div class="row">
							<div class="occupation col-xs-3">我的简历2</div>
						</div>
						<div class="row" style="margin-top:5px;">
							<div class="company col-xs-4">UI设计师</div>
							<div class="date col-xs-2 col-xs-offset-6"><a href="#tab12" data-toggle="tab">修改</a></div>
						</div>
						<div style="border:1px solid #ccc;margin-top:5px;"></div>
					</div>
				</div>
				<div class="myresume">
					<div style="border:1px solid #ccc;margin-top:10px;"></div>
					<div class="result">
						<div class="row">
							<div class="occupation col-xs-3">我的简历3</div>
						</div>
						<div class="row" style="margin-top:5px;">
							<div class="company col-xs-4">砖头搬运工</div>
							<div class="date col-xs-2 col-xs-offset-6"><a href="#tab12" data-toggle="tab">修改</a></div>
						</div>
						<div style="border:1px solid #ccc;margin-top:5px;"></div>
					</div>
				</div>
				<div class="myresume">
					<div style="border:1px solid #ccc;margin-top:10px;"></div>
					<div class="result">
						<div class="row">
							<div class="occupation col-xs-3">我的简历4</div>
						</div>
						<div class="row" style="margin-top:5px;">
							<div class="company col-xs-4">砖头搬运工</div>
							<div class="date col-xs-2 col-xs-offset-6"><a href="#tab12" data-toggle="tab">修改</a></div>
						</div>
						<div style="border:1px solid #ccc;margin-top:5px;"></div>
					</div>
				</div>
				<div class="myresume">
					<div style="border:1px solid #ccc;margin-top:10px;"></div>
					<div class="result">
						<div class="row">
							<div class="occupation col-xs-3">我的简历5</div>
						</div>
						<div class="row" style="margin-top:5px;">
							<div class="company col-xs-4">砖头搬运工</div>
							<div class="date col-xs-2 col-xs-offset-6"><a href="#tab12" data-toggle="tab">修改</a></div>
						</div>
						<div style="border:1px solid #ccc;margin-top:5px;"></div>
					</div>
				</div>
				<a class="btn btn-default col-md-offset-5" style="margin-top:10px;" href="<c:url value='/page/addResume.do'/>">添加简历</a>
			</div>
		</div>
	</body>
</html>
