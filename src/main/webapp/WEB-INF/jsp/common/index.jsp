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
		
		<link rel="stylesheet" href="<c:url value='/css/index.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/index.js'/>"></script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content">
			<div class="container">
				<div id="cHead" class="row">
					<h2 class="col-sm-5">最新招聘信息:</h2>
					<div class="col-sm-1 col-sm-offset-6"><a href="<c:url value='/recruit/recruitList.do'/>">更多</a></div>
				</div>
				<div id="zpxxView">
					<!--<div class="zpxx">
						<h3><a href='<c:url value="/recruit/recruitDetail.do?recrId="/>'>Java软件工程师</a></h3>
						<p>上海金原子信息技术有限公司</p>
					</div>-->
					
				</div>
			</div>
		</div>
		<div class="container-fuild footer" style="color: #fff;background: #222;">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center">
					<h3>Contact 联系我们</h3>
					<p>Tel/电话：020-88888888</p>
					<p>Tel/电话：020-88888888</p>
					<p>Tel/电话：020-88888888</p>
					<p>Tel/电话：020-88888888</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center">
					<h3>Contact 联系我们</h3>
					<p>Tel/电话：020-88888888</p>
					<p>Tel/电话：020-88888888</p>
					<p>Tel/电话：020-88888888</p>
					<p>Tel/电话：020-88888888</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center"
					id="code">
					<img src="<c:url value='/images/code.jpg'/>" class="img-responsive" style="margin-top: 30px;">
				</div>
			</div>
		</div>
	</body>
</html>
