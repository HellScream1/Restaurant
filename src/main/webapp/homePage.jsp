<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
  <%
  	pageContext.setAttribute("APP_PATH", request.getContextPath());
  %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Navigation</title>
    <!-- Bootstrap -->
	<script type="text/javascript" src="js/jquery-3.4.0.min.js"></script>
	<script type="text/javascript" src="./static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link href="./static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./static/bootstrap-3.3.7-dist/css/bootstrap-grid.min.css" />
	<link rel="stylesheet" type="text/css" href="./static/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
	<link href="./css/tqrstylesheet.css" rel="stylesheet" />
	<link href="./layui/css/templatemo_style.css" rel="stylesheet" type="text/css" />
	<style>
		#lunBo{width: 1130px;margin: 0 auto;}
		.carousel-indicators{
			bottom: 0px;
		}
		.carousel-indicators .active{
			width: 0px;
			height: 0px;
		}
		.carousel-indicators li{
			width: 0px;
			height: 0px;
		}
	.demo{ padding: 20px 0;background: linear-gradient(to right,#7AB6B6 50%, #E5CFAA 50%); }
	.thumbnail{
		border: none;
		background: rgba(255,255,255,0);
	}
	.form-horizontal{
	background-color: rgba(255,255,255,.5);
	font-family: 'Arimo', sans-serif;
	text-align: center;
	padding: 18px 30px 15px;
	/*box-shadow: 12px 12px 0 0 rgba(0,0,0,0.3);*/
	box-shadow: 0 1px 1px rgba(0,0,0,.05);
	border-radius: 0.3125rem;
	}
	
	.form-horizontal .heading{
	color: #555;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 1px;
	text-transform: capitalize;
	margin: 0 0 10px 0;
	}
	
	.form-horizontal .form-group{
	margin: 0 auto 1.25rem;
	position: relative;
	}
	
	.form-horizontal .form-group:nth-last-child(2){ margin-bottom: 20px; }
	
	.form-horizontal .form-group:last-child{ margin: 0; }
	
	.form-horizontal .form-group>i{
	color: #999;
	transform: translateY(-50%);
	position: absolute;
	left: 5px;
	top: 50%;
	}
	
	.form-horizontal .form-control{
	color: #3d3d3d;
	background-color: #fff;
	font-size: 14px;
	letter-spacing: 1px;
	height: 48px;
	padding: 6px 10px 6px 25px;
	box-shadow: 0 0 0 0 transparent;
	border: none;
	border-bottom: 1px solid rgba(0,0,0,0.1);
	border-radius: 0;
	display: inline-block;
	}
	
	.form-control::placeholder{
	color: rgba(0,0,0,0.2);
	font-size: 16px;
	}
	
	.form-horizontal .form-control:focus{
	border-bottom: 1px solid #F1F1F1;
	box-shadow: none;
	}
	
	.form-horizontal .btn{
	color: #FFFFFF;
	background-color: #e71b23;
	font-size: 22px;
	font-weight: 500;
	letter-spacing: 1px;
	border-radius: 5px;
	width: 100%;
	height: auto;
	padding: 10px 30px;
	margin: 0 auto 2px;
	border: none;
	display: block;
	position: relative;
	transition: all 0.3s ease;
	}
	
	.form-horizontal .btn:focus,
	.form-horizontal .btn:hover{
	color: #fff;
	background-color: #f8000a;
	}
	
	.form-horizontal .create_account{
	color: #3d3d3d;
	font-size: 16px;
	font-weight: 600;
	text-decoration: none;
	display: inline-block;
	}
	.form-horizontal .forget_account{
	font-weight: 200;
	font-size: 0.875rem;
	}
	.form-horizontal .create_account:hover{
	color: #636363;
	text-decoration: none;
	}
	</style>
	
  </head>
<body style="background: #F1F1F1;">
	
	<div class="container">
	<jsp:include page="Index/top.jsp"></jsp:include>
		<div id="lunBo">
		<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
			</ol>   
			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="img/lunBo1.png" alt="First slide">
				</div>
				<div class="item">
					<img src="img/lunBo2.png" alt="Second slide">
				</div>
			</div>
			<!-- 轮播（Carousel）导航 -->
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div> 
		</div>
		<div class="row" style="margin:1.25rem 1.875rem;" >
			<div id="login1" class="col-md-offset-4 col-md- col-sm-offset-3 col-sm-6" style="float:right;margin-top: -470px;left: 24px;width: 340px;">
				<form id="login_form" class="form-horizontal" method="post">
					<div id="mmp" class="heading"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>开始订餐</div>
					<div class="form-group">
						<i class="fa fa-user"></i><input required name="username" type="email" class="form-control" placeholder="邮箱" id="exampleInputEmail1">
					</div>
					<div class="form-group">
						<i class="fa fa-lock"></i><input required name="password" type="password" class="form-control" placeholder="密码"/>
					</div>
					<div class="form-group">
						<div class="checkbox text-left" style="color:#636363">
							<label>
							  <input type="checkbox"> 记住密码
							</label>
						</div>
						<button type="button" id="login_btn" class="btn btn-lg btn-primary">登录</button>
						<span><a href="#" class="create_account forget_account">忘记密码？</a></span><div></div>
						<span><a href="#" class="create_account forget_account">第三方登录：<img alt="weixin" style="width: 1.875rem;" src="./img/wechat.png"></a></span>
						

					</div>
					<div class="form-group" style="border-top: 1px solid #c3c8cc;">
						<span><a href="register.jsp" class="create_account">新用户<br>请输入您的送餐地址</a></span>
					</div>
				</form>
			</div>
		</div>

		<!-- 这是中间三个图片 -->
		<div class="row">
	  <div class="col-xs-6 col-md-4">
		<a href="#" class="thumbnail">
		  <img src="./img/mailesong.jpg" alt="无法加载图片">
		</a>
	  </div>
	  <div class="col-xs-6 col-md-4">
		<a href="#" class="thumbnail">
		  <img src="./img/moucan.jpg" alt="无法加载图片">
		</a>
	  </div>
	  <div class="col-xs-6 col-md-4">
		<a href="#" class="thumbnail">
		  <img src="./img/chaxundizhi.jpg" alt="无法加载图片">
		</a>
	  </div>
	</div>

		<!-- 这是一个分割线和“如何订餐” -->
		<div style="border-top:1px solid #636363;margin: 0 1.25rem;">
		<h1 style="text-align: left;margin-left: 3.125rem;font-size: 15pt;">如何订餐？</h1>
	</div>

		<div class="row">
	  <div class="col-xs-12 col-md-12">
		<a href="javascript:showDialog()" class="thumbnail">
		  <img src="./img/dingcan.png" alt="无法加载图片">
		</a>
	  </div>
	</div>
	</div>
	<!-- 这是弹出窗口 -->
	<div class="ui-mask" id="mask" onselectstart="return false"></div>	
	<div class="ui-dialog" id="dialogMove" onselectstart='return false;'>
	<div class="ui-dialog-title" id="dialogDrag"  onselectstart="return false;" >
		<div class="heading"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>登陆后开始订餐</div>
		<a class="ui-dialog-closebutton" href="javascript:hideDialog();" style="top: 0px">X</a>
	</div>
	<div class="ui-dialog-content">
		<form class="form-horizontal" style="background: #FFFFFF;" method="post">
			<div class="form-group">
				<i class="fa fa-user"></i><input required name="username" type="email" class="form-control" placeholder="邮箱" id="exampleInputEmail2">
			</div>
				<div class="form-group">
				<i class="fa fa-lock"></i><input required name="password" type="password" class="form-control" placeholder="密码"/>
				</div>
				<div class="form-group">
				<div class="checkbox text-left" style="color:#636363">
				<label>
				<input type="checkbox"> 记住密码
				</label>
				</div>
				<button type="submit"  class="btn btn-lg btn-primary" >登录</button>
				<span><a href="#" class="create_account forget_account">忘记密码？</a></span><div></div>
				</div>
				<div class="form-group" style="border-top: 1px solid #c3c8cc;">
				<span><a href="" class="create_account"><h3><small>新用户</small></h3>请输入您的送餐地址</a></span>
					</div>
		</form>
	</div>
</div>
	<!-- 网站底部 -->
	<div id="templatemo_footer_wrapper">
		<div id="templatemo_footer">
	    	<div class="col one_fourth">
	        	<h4>浏览菜单</h4>
	            <ul class="footer_list">
	            	<li><a href="">促销产品和热卖产品</a></li>
	                <li><a href="">主食和超值套餐</a></li>
	                <li><a href="">小食</a></li>
	                <li><a href="">甜品</a></li>
	                <li><a href="">饮品</a></li>
					<li><a href="">开心乐园餐</a></li>
				</ul>   
	        </div>
	        
	        <div class="col one_fourth">
	        	<h4>帮助</h4>
	            <ul class="twitter_post">
		            <li><a href="">网站条款</a></li>
	                <li><a href="">隐私政策</a></li>
					<li><a href="">订餐须知</a></li>
					<li><a href="">常见问题</a></li>
					<li><a href="">关于三十分钟必达</a></li>
					<li><a href="">经营公示</a></li>
					<li><a href="">安全公示</a></li>			   
				</ul>
	        </div>
	        <div class="col one_fourth no_margin_right">
	        	<h4>关注我们</h4>	
	            <div class="footer_social_button">
	                <a href="#"><img src="img/weiblog.png"/></a>
	                <a href="#"><img src="img/wechat.png" /></a>
	                <a href="#"><img src="img/qq.png"/></a>
				</div>
	        
	            Copyright © 2048 <a href="#">软卓敏捷第六组</br></a>UI Designd By <a>前端小组</a>
	            
	        </div>
	        
	        <div class="cleaner"></div>
	    </div> <!-- END of footer -->
	</div> <!-- END of wrapper -->
	<!-- 弹出窗口的js -->
	<script src="./js/tqrscript.js"></script>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    
    
    <script type="text/javascript">
    <!--绑定登录事件 -->
    $("#login_btn").click(function() {
		$.ajax({
			url:"${APP_PATH}/login",
			type:"post",
			data:$("#login_form").serialize(),
			success:function(result){
				resumeLogin1(result);
				window.location.reload();
			}
		})
	});
    
    function resumeLogin1(result) {
    	$("#login1 .form-group").empty();
		$("#mmp").text("欢迎订餐");
		var name=$("<h1>你好,</h1>").append(result.extend.userInfo.name);
		var btn=$("<button></button>").attr("type","button").addClass("btn btn-lg btn-primary").append("开始订餐");
		var btn1=$("<button></button>").attr("type","button").addClass("btn btn-lg btn-primary").append("增加订餐地址");
		btn.click(function() {
			window.location.href="${APP_PATH}/main.jsp";
		});
		btn1.click(function() {
			window.location.href="${APP_PATH}/Booking.jsp";
		});
		var form1=$("#login1 .form-group").eq(0);
		var form2=$("#login1 .form-group").eq(1);
		form2.append(btn);
		form2.append(btn1);
		name.appendTo(form1);
	}
    
    function resumeLogin2() {
    	$("#login1 .form-group").empty();
		$("#mmp").text("欢迎订餐");
		var name=$("<h1>你好,</h1>").append("${sessionScope.loginInfo.name}");
		var btn=$("<button></button>").attr("type","button").addClass("btn btn-lg btn-primary").append("开始订餐");
		var btn1=$("<button></button>").attr("type","button").addClass("btn btn-lg btn-primary").append("增加订餐地址");
	
		btn1.click(function() {
			window.location.href="${APP_PATH}/Booking.jsp";
		});
		btn.click(function() {
			window.location.href="${APP_PATH}/main.jsp";
		});
		var form1=$("#login1 .form-group").eq(0);
		var form2=$("#login1 .form-group").eq(1);
		form2.append(btn);
		if("${sessionScope.loginInfo.addrstring}"==""){
			form2.append(btn1);
		}
		else{
			var address=$("<p></p>").append("送餐至  "+"${sessionScope.loginInfo.addrstring}").attr("style","font-size:25px;color:#191970;");
			form2.append(address);
		}
		name.appendTo(form1);
	}
    window.onload=function(){
    	if("${sessionScope.loginInfo}"!=null&&"${sessionScope.loginInfo}"!=""){
    	resumeLogin2();
    	}
    }
    </script>
  </body>
</html>