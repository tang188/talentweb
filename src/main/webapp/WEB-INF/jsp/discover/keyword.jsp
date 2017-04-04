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
		
		<link rel="stylesheet" href="<c:url value='/css/keyword.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/keyword.js'/>"></script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content">
			<div class="container">
				<form class="form-horizontal" style="margin-top: 20px;">
					<div class="form-group">
						<div class="col-sm-9 col-sm-offset-1 text-right">
							<input class="form-control input-lg" type="text" id="searchKey" autofocus/>
						</div>		
						<div class="col-sm-2 text-left">
							<button type="button" class="btn btn-default btn-lg" id="searchButton" style="padding: 13px 30px;"><span class="glyphicon glyphicon-search"></span></button>
						</div>			
					</div>
				</form>

				<div style="border:1px solid #ccc;margin-top:30px;margin-bottom: 30px;"></div>

				<div id="myKeyword">
					<p style="font-size:20px;font-family:'黑体';">我的关键字：</p>
					<div id="myKeywordView">
						<!--<div class="keywordArea">
							<span class="keyCon" onclick="keywordConfig.keyConClick(this)">JAVA</span>
							<span class="keyIcon glyphicon glyphicon-minus-sign pull-right" onclick="keywordConfig.keyIconClick(this)"></span>
						</div>-->

					</div>
					<div class="keywordArea">
						<span class="keyIcon2 glyphicon glyphicon-plus-sign" onclick="keywordConfig.keyIcon2Click()"></span>
					</div>
					<div style="clear: both;"></div>
				</div>

				<div style="border:1px solid #ccc;margin-top:30px;margin-bottom: 30px;"></div>

				<div id="hotKeyword">
					<p style="font-size:20px;font-family:'黑体';">热词：</p>
					<div id="hotKeywordView">
						<!--<div class="keywordArea">
							<span class="keyCon" onclick="keywordConfig.hkeyConClick(this)">JAVA</span>
							<span class="keyIcon glyphicon glyphicon-minus-sign pull-right" onclick="keywordConfig.hkeyIconClick(this)"></span>
						</div>-->

					</div>
					<div class="keywordArea">
						<span class="keyIcon2 glyphicon glyphicon-plus-sign" onclick="keywordConfig.hkeyIcon2Click()"></span>
					</div>
					<div style="clear: both;"></div>
				</div>
			</div>
		</div>
	</body>
</html>
