<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="./js/jquery-3.3.1.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="post" id="mmp">
rawp:<input type="text" name="rawp">
newp:<input type="text" name="newp">
repeatp:<input type="text" name="repeatp">
<input type="submit" value="提交" id="123">
</form>
<script type="text/javascript">
$("#123").click(function() {
	alert($("#mmp").serialize());

	$.post("/Restaurant/validateUpdatePwd",$("#mmp").serialize(),function(){alert("成功");})
	return false;
	})
</script>
</body>
</html>