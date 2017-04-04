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
		
		<link rel="stylesheet" href="<c:url value='/css/publishHunt.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/publishHunt.js'/>"></script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content">
			<div class="container">
				<div id="formView">
					<form class="container form-horizontal">
						<h4 class="col-sm-offset-1">发布求职</h4>
						<hr/>
						<div class="form-group">
							<label class="col-sm-2 control-label">求职岗位</label>
							<div class="col-sm-8" id="addJob">
								<input class="form-control" type="text"/>
							</div>					
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">工作地点</label>
							<div class="col-sm-8" id="addPlace">
								<input class="form-control" type="text"/>
							</div>					
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">最高学历</label>
							<div class="col-sm-8" id="addDegree">
								<input class="form-control" type="text"/>
							</div>					
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">期望薪资</label>
							<div class="col-sm-3" id="addSalary_l">
								<select class="form-control">
									<option value="1000">1000</option>
									<option value="2000">2000</option>
									<option value="3000">3000</option>
									<option value="4000">4000</option>
									<option value="5000">5000</option>
									<option value="6000">6000</option>
									<option value="7000">7000</option>
									<option value="8000">8000</option>
									<option value="9000">9000</option>
								</select>
							</div>
							<p class="col-sm-2 text-center">至</p>
							<div class="col-sm-3" id="addSalary_h">
								<select class="form-control">
									<option value="1000">1000</option>
									<option value="2000">2000</option>
									<option value="3000">3000</option>
									<option value="4000">4000</option>
									<option value="5000">5000</option>
									<option value="6000">6000</option>
									<option value="7000">7000</option>
									<option value="8000">8000</option>
									<option value="9000">9000</option>
									<option value="以上">以上</option>
								</select>
							</div>					
						</div>
						<h4 class="col-sm-offset-1" style="margin-top: 30px;">自我描述</h4>
						<hr/>
						<div class="form-group">
							<label class="col-sm-2 control-label">专业技能</label>
							<div class="col-sm-8" id="addSkill">
								<textarea class="form-control" rows="10"></textarea>
							</div>					
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">工作经验</label>
							<div class="col-sm-8" id="addExperience">
								<textarea class="form-control" rows="10"></textarea>
							</div>					
						</div>
					</form>
					<div class="text-center">
						<button type="button" class="btn btn-primary" id="saveButton">发布求职</button>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
