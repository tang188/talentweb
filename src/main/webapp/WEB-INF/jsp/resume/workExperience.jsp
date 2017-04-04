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
		
		<link rel="stylesheet" href="<c:url value='/css/workExperience.css'/>">		
		<script type="text/javascript" src="<c:url value='/js/workExperience.js'/>"></script>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/common/pageHeader.jsp" %>
		<div id="content">
			<div class="container">
				<!-- 工作/实习经验 -->
				<div class="tab-pane" id="tab15">
					<div class="row13 text-center" style="font-size:20px;">
						工作/实习经验
					</div>
					<div style="border:1px solid #ccc;margin-top:5px;margin-bottom:10px;"></div>
					<div style="display:inline-block;margin-top:5px;">
						<span>公司名称：</span>
						<input type="text" placeholder="公司名称">
					</div>
					<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>
					<div style="display:inline-block;margin-top:5px;">
						<span>开始时间：</span>
						<select class="selected">  
						  <option>1985</option>  
						  <option>1986</option>  
						  <option>1987</option>  
						  <option>1988</option>  
						  <option>1989</option> 
						  <option>1990</option>  
						  <option>1991</option>  
						  <option>1992</option>  
						  <option>1993</option>  
						</select> 
						年
						<select class="selected">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						月
						<select class="selected">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						日
					</div>
					<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>
					<div style="display:inline-block;margin-top:5px;">
						<span>结束时间：</span>
						<select class="selected">  
						  <option>1985</option>  
						  <option>1986</option>  
						  <option>1987</option>  
						  <option>1988</option>  
						  <option>1989</option> 
						  <option>1990</option>  
						  <option>1991</option>  
						  <option>1992</option>  
						  <option>1993</option>  
						</select> 
						年
						<select class="selected">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						月
						<select class="selected">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						日
					</div>
					<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>
					<div style="display:inline-block;margin-top:5px;">
						<span>所在行业：</span>
						<input type="text" placeholder="行业">
					</div>
					<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>
					<div style="margin-top:5px;margin-bottom:10px;">
						<span>工作描述</span>
						<textarea name="evaluate" cols="50" rows="5"></textarea>
					</div>
					<div style="border:1px dashed #ccc;margin-top:5px;margin-bottom:5px;"></div>
					<button class="next center-block" style="margin-top:10px;">
						<a href="#tab13_1" data-toggle="tab" type="button">保存</a>
					</button>
				</div>
			</div>
		</div>
	</body>
</html>
