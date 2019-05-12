<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>BookingShipment</title>
	
	<link
	href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="${APP_PATH }/bootstrapvalidator-0.4.5/dist/css/bootstrapValidator.css" />
<script type="text/javascript"
	src="${APP_PATH }/bootstrapvalidator-0.4.5/vendor/jquery/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="${APP_PATH }/bootstrapvalidator-0.4.5/vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${APP_PATH }/bootstrapvalidator-0.4.5/dist/js/bootstrapValidator.js"></script>
	<script src="${APP_PATH }/static/jquery-3.3.1.js"></script>
<script
	src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	
</head>
<body style="background: #f1f1f1;">
	<div style="width:1100px;padding:0.625rem;background: #f1f1f1;margin:0 auto;">
			<jsp:include page="Index/top.jsp"></jsp:include>

			<!-- 寄件人地址选择框 -->	
			<form action="${APP_PATH }/addAddress" method="post">
			<div data-toggle="distpicker" style="padding:5px; width: 720px;height:550px; margin:0 auto;background-color: #f1f1f1;">
			  <h3 style="color: #f3ad12">请选择送餐地址</h3>
			  <p style="color: #b0b0b0">*为必填选项</p>
			   <div class="form-group" style="width: 100%;">
			    <label class="sr-only" for="province1">Province</label>省份：
			   <select class="form-control" id="province1" name="province1" data-province="---- 选择省 ----"></select>
			  </div>
			  <div class="form-group"style="width: 100%;">
			    <label class="sr-only" for="city1">City</label>市：
			    <select class="form-control" id="city1" id="city1" name="city1" data-city="---- 选择市 ----"></select>
			  </div>
			  <div class="form-group"style="width:100%">
			    <label class="sr-only" for="district1">District</label>区：
			    <select class="form-control" id="district1" name="district1" data-district="---- 选择区 ----"></select>
			  </div>
			  <div>
			      <p>请填写详细地址：</p>
			  	  <textarea name="adr" rows="5" style="width: 100%;"></textarea>
			  </div>
			  <button style="width:150px;height:50px;border-radius: 4px;line-height: 1.3333333;font-size: 20px; color:#fff!important; background-color: #ec4c34;linear-gradient(#ec4c34,#d21920);margin:0 auto;">确认送餐地址</button>
			</div>	
			</form>	
	</div>

	<script src="./js/jquery-3.4.0.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>

	<script src="js/distpicker.data.js"></script>
	<script src="js/distpicker.js"></script>
	<script src="js/main.js"></script>
	
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>