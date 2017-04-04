<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<link rel="stylesheet" href="<c:url value='/css/pageHeader.css'/>">		
<script type="text/javascript" src="<c:url value='/js/pageHeader.js'/>"></script>

<div id="pageHeader">
	<div class="container">
		<img src="<c:url value='/images/logo.png'/>">
		<div id="pageHeaderLink" class="pull-right">
			<%
				Object obj = request.getSession().getAttribute("current_user");
				Object obj2 = request.getSession().getAttribute("current_company");
				if(obj!=null){
					String userName = ((net.togogo.talent.domain.TbUser)obj).getUserName();
			%>
					<span style="color: #3591E3;">欢迎你，<%=userName %></span> / 
					<a href="<c:url value='/page/logout.do'/>">注销</a>
			<%
				}else if(obj2!=null){
					String compName = ((net.togogo.talent.domain.TbCompany)obj2).getCompName();
			%>
					<span style="color: #3591E3;">欢迎你，<%=compName %></span> / 
					<a href="<c:url value='/page/logout.do'/>">注销</a>
			<%		
				}else{
			%>
					<a href="<c:url value='/page/login.do'/>">登录</a> / 
					<a href="<c:url value='/page/register.do'/>">注册</a>
			<%
				}
			%>
		</div>
	</div>
</div>
<div id="banner">
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>
		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="<c:url value='/images/banner_01.jpg'/>" alt="This is a picture!" style="height: 400px;width: 100%;">
				<div class="carousel-caption">
					<h2></h2>
				</div>
			</div>
			<div class="item">
				<img src="<c:url value='/images/banner_02.jpg'/>" alt="This is a picture!" style="height: 400px;width: 100%;">
				<div class="carousel-caption">
					<h2></h2>
				</div>
			</div>
			<div class="item">
				<img src="<c:url value='/images/banner_03.jpg'/>" alt="This is a picture!" style="height: 400px;width: 100%;">
				<div class="carousel-caption">
					<h2></h2>
				</div>
			</div>
		</div>
		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</div>
<div id="nav">
	<ul class="nav nav-tabs nav-justified">
		<li role="presentation"><a href="<c:url value='/page/index.do'/>">首页</a></li>
		<li role="presentation"><a href="<c:url value='/page/discover.do'/>">发现</a></li>
		<li role="presentation" class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
	  			发布 <span class="caret"></span>
			</a>
		    <ul class="dropdown-menu">
		    	<li><a href="<c:url value='/page/publishRecruit.do'/>">发布招聘</a></li>
	            <li><a href="<c:url value='/page/publishHunt.do'/>">发布求职</a></li>
		    </ul>
		</li>
		<li role="presentation" class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
	  			消息 <span class="caret"></span>
			</a>
		    <ul class="dropdown-menu">
		    	<li><a href="<c:url value='/page/recruitMessage.do'/>">招聘消息</a></li>
	            <li><a href="<c:url value='/page/starMessage.do'/>">推荐消息</a></li>
	            <li><a href="<c:url value='/page/systemMessage.do'/>">系统消息</a></li>
		    </ul>
		</li>
		<li role="presentation" class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" id="dropdownMenu4">
				我的简历 <span class="caret"></span>
			</a>
        	<ul class="dropdown-menu" aria-labelledby="dropdownMenu4">
        		<li><a href="<c:url value='/page/myResume.do'/>">我的简历</a></li>
				<li><a href="<c:url value='/page/addResume.do'/>">添加简历</a></li>
				<li><a href="<c:url value='/page/education.do'/>">教育背景</a></li>
				<li><a href="<c:url value='/page/workExperience.do'/>">工作/实习经验</a></li>
				<li><a href="<c:url value='/page/projectExperience.do'/>">项目经验</a></li>
        	</ul>
		</li>
		<li role="presentation" class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" id="dropdownMenu2">
				个人中心 <span class="caret"></span>
			</a>
	      <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
	        <li><a href="<c:url value='/page/myHunt.do'/>">我的求职</a></li>
	        <li><a href="<c:url value='/page/myDeliver.do'/>">我的投递</a></li>
	        <li><a href="<c:url value='/page/feedback.do'/>">帮助与反馈</a></li>
		  </ul>
		</li>
		<li role="presentation" class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" id="dropdownMenu3">
				我的账户 <span class="caret"></span>
			</a>
        	<ul class="dropdown-menu" aria-labelledby="dropdownMenu3">
        		<li><a href="<c:url value='/page/accountInfo.do'/>">账户信息</a></li>
				<li><a href="<c:url value='/page/changeUserName.do'/>">修改用户名</a></li>
				<li><a href="<c:url value='/page/changePassword.do'/>">修改密码</a></li>
        	</ul>
		</li>
		<li role="presentation"><a href="<c:url value='/page/about.do'/>">关于我们</a></li>
	</ul>
</div>