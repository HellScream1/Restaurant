<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
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
<meta charset="UTF-8">


<title>Insert title here</title>
<style type="text/css">
.form-group .btn {
	color: #FFFFFF;
	background-color: #e71b23;
	font-size: 22px;
	font-weight: 500;
	letter-spacing: 1px;
	border-radius: 5px;
	height: auto;
	padding: 10px 30px;
	margin: 0 auto 2px;
	border: none;
}

.form-group a, a:link {
	color: #35b6f9;
}

.form-group a:hover {
	color: #0792db;
}

.form-group .input-lg {
	height: 46px;
	padding: 10px 16px;
	font-size: 18px;
	line-height: 1.3333333;
	border-radius: 4px;
}

.form-group .form-control {
	width: 100%;
	height: 54px;
	padding: 6px 12px;
	background-color: #fff;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
</style>
</head>
<body style="background: #f3f3f3">
	<div class="container">
		<jsp:include page="Index/top.jsp"></jsp:include>
		<div class="row" style="margin-top: 80px;">

			<form class="form-horizontal" method="post"
				action="${APP_PATH }/register">



				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">*称呼:</label>
					<div class="col-sm-3">
						<select class="form-control input-lg" name="gender">
							<option>男士</option>
							<option>女士</option>

						</select>
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">*姓名:</label>
					<div class="col-sm-4">
						<input type="text" class="form-control input-lg" name="name"
							placeholder="请输入姓名" required="required">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">*手机号:</label>
					<div class="col-sm-4">
						<input type="tel" class="form-control input-lg" name="tel"
							placeholder="请输入手机号" required="required">
					</div>
				</div>
				<div class="form-group" id="email-group">
					<label for="inputPassword3" class="col-sm-2 control-label">*邮箱:</label>
					<div class="col-sm-4">
						<input type="email" class="form-control input-lg" id="email1"
							name="email" placeholder="请输入邮箱" required="required">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">*密码:</label>
					<div class="col-sm-4">
						<input type="password" class="form-control input-lg"
							id="password1" name="password" placeholder="请设置密码"
							required="required">
					</div>
				</div>
				<div class="form-group" id="password_group">
					<label for="inputPassword3" class="col-sm-2 control-label">*确认密码:</label>
					<div class="col-sm-4">
						<input type="password" class="form-control input-lg"
							id="password2" placeholder="请重复密码" required="required">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" id="sub_btn" class="btn btn-default">创建账户</button>
					</div>
				</div>
			</form>
		</div>

		<script type="text/javascript">
			var flag1 = true;
			var flag2 = true;
			$("#email1")
					.blur(
							function() {
								if ($("#email1").val() != "") {
									$
											.ajax({
												async : false,
												url : "validateEmail",
												type : "get",
												data : "email=" + $(this).val(),
												success : function(result) {
													$("#email-group").find(
															"div:eq(1)")
															.remove();

													if (result.code == 100) {
														var successBox = $(
																"<div></div>")
																.addClass(
																		"alert alert-success")
																.attr("role",
																		"alert")
																.append(
																		"恭喜！该邮箱可以使用");
														$("#email-group")
																.append(
																		successBox);
														flag1 = true;
													} else {
														var warningBox = $(
																"<div></div>")
																.addClass(
																		"alert alert-warning")
																.attr("role",
																		"alert")
																.append(
																		"该邮箱已经被注册！");
														$("#email-group")
																.append(
																		warningBox);
														flag1 = false;

													}

												}
											});
								}
							});
			$("#password2")
					.blur(
							function() {

								var p1 = $("#password1").val();
								var p2 = $("#password2").val();
								var maxdiv = $("#password_group");
								maxdiv.find("div:eq(1)").remove();
								if (p1 != p2) {
									var warningBox = $("<div></div>").addClass(
											"alert alert-warning").attr("role",
											"alert").append("两次密码不一致！请重试");
									maxdiv.append(warningBox);
									flag2 = false;
								} else {

									var successBox = $("<div></div>").addClass(
											"alert alert-success").attr("role",
											"alert").append("恭喜！可以使用该密码");
									maxdiv.append(successBox);
									flag2 = true;
									if (flag1 && flag2) {
										$("#sub_btn").attr("disabled", false);
									} else
										$("#sub_btn").attr("disabled", true);
								}
							});
		</script>
	</div>
</body>
</html>