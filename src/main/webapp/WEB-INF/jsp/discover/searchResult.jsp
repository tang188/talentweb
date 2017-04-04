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
		
		<link rel="stylesheet" href="<c:url value='/css/searchResult.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/searchResult.js'/>"></script>
		<script type="text/javascript">
			var keywords = "${keywords}";
		</script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content" class="container">
			<h2 class="text-left">搜索结果</h2>
			<div id="listConView">
				<!--<div class="listCon">
					<div class="listCon1 row">
						<h3 class="col-md-10"><a href="<c:url value='/recruit/recruitDetail.do?recrId=1'/>">软件工程师</a></h3>
						<p class="col-md-2 text-right">6000元</p>
					</div>
					<div class="listCon2 row">
						<h4 class="col-md-9">深圳腾讯有限公司</h4>
						<p class="col-md-3 text-right">今天</p>
					</div>
					<div class="listCon3 row">
						<p>上班地点：深圳市南山区科技园飞亚达大厦3-10楼</p>
					</div>
				</div>-->

			</div>
			<div style="clear: both;"></div>
			<nav class="text-right">
				<ul class="pager">
					<li><a id="preBtn">上一页</a></li>
					<li><a id="nextBtn">下一页</a></li>
				</ul>
			</nav>
		</div>
	</body>
</html>
