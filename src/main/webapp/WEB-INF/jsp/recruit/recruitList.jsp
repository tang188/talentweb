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
		
		<link rel="stylesheet" href="<c:url value='/css/recruitList.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/recruitList.js'/>"></script>
		<script type="text/javascript">
			var totalCount = ${count};
		</script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content">
			<div class="container">
				<h2>招聘信息</h2>
				<div id="zpxxView">
					<!--<div class="zpxx">
						<h3><a href='<c:url value="/recruit/recruitDetail.do?recrId="/>'>Java软件工程师</a></h3>
						<p>上海金原子信息技术有限公司</p>
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
		</div>
	</body>
</html>
