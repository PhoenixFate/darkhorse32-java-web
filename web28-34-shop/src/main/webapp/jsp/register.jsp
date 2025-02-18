<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head></head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>会员注册</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" />

<%--引入表单校验插件： jquery-validate.js--%>
<script src="${pageContext.request.contextPath}/js/jquery.validate.min.js" type="text/javascript"></script>


<style>
body {
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}

font {
	color: #3164af;
	font-size: 18px;
	font-weight: normal;
	padding: 0 10px;
}
.error {
	color:red;
}
input {
	color:black!important;
}
</style>


<script>
<%--自定义校验规则--%>
$.validator.addMethod(
		// 规则名称
		"checkUsername",
		// 检验的函数
		function (value,element,params){
			// 定义一个标志
			var flag=false;
			$.ajax({
				"async":false,
				"url":"${pageContext.request.contextPath}/userServlet",
				"data":{
					"method":"checkUsername2",
					"username":value
				},
				"type":"POST",
				"dataType":"json",
				"success":function(data){
					flag=data.isExist;
				}
			})
			return flag;
		}
)


<%--	页面加载完毕--%>
	$(function () {
		$("#username").blur(function () {
			// 获得文本框的值
			var username=$(this).val();
			console.log("username: "+username)
			if(username!=null && username.trim()!=''){
				var url="${pageContext.request.contextPath}/userServlet"
				var params={
					method:"checkUsername",
					username:username
				}
				$.post(url,params,function (data) {
					console.log(data)
					if(data==1){
						$("#usernameMessage").html("该用户名已经存在").css("color","#f00");
					}else {
						$("#usernameMessage").text("该用户名可用").css("color","#09aa09 ");
					}
				})
			}else {
				$("#usernameMessage").html("")
			}
		})

		$("#registerForm").validate({
			rules:{
				"username":{
					"required":true,
					"checkUsername":true,
				},
				"password":{
					"required":true,
					"minlength":6
				},
				"confirmedPassword":{
					"required":true,
					"equalTo":"#password"
				},
				"name":{
					"required":true
				},
				"sex":{
					"required":true
				},

				"email":{
					"required":true,
					"email": true
				},
				"telephone":{
					"required":true
				},
				"birthday":{
					"required":true
				},
				"checkCode":{
					"required":true
				}
			},
			messages:{
				"username":{
					"required":"用户名不能为空",
					"checkUsername":"用户名已经存在"
				},
				"password":{
					"required":"密码不能为空",
					"minlength":"密码至少6位长度"
				},
				"confirmedPassword":{
					"required":"请再次输入密码",
					"equalTo":"密码不一致"
				},
				"name":{
					"required":"请输入姓名"
				},
				"email":{
					"required":"邮箱不能为空",
					"email":"邮箱格式不正确"
				},
				"telephone":{
					"required":"请输入手机号码"
				},
				"birthday":{
					"required":"请选择生日"
				},
				"checkCode":{
					"required":"请输入验证码"
				}
			}
		})

	})

	function changeCheckImage(){
		console.log("register-------------------checkImage---------------")
		var checkImage = document.getElementById("checkImage");
		console.log(checkImage);
		checkImage.src="${pageContext.request.contextPath}/checkImage?random="+new Date().getTime();
	}
</script>


</head>
<body>

	<!-- 引入header.jsp -->
	<jsp:include page="header.jsp"/>

	<div class="container"
		style="width: 100%; background: url('${pageContext.request.contextPath}/image/regist_bg.jpg');">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8"
				style="background: #fff; padding: 40px 80px; margin: 30px; border: 7px solid #ccc;">
				<font>会员注册</font>USER REGISTER
				<form id="registerForm" class="form-horizontal" style="margin-top: 5px;" action="${pageContext.request.contextPath}/userServlet?method=register" method="post">
					<div style="color:red">
						${registerInfo}
					</div>
					<div class="form-group">
						<label for="username" class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="username" name="username"
								placeholder="请输入用户名">
						</div>
						<div id="usernameMessage" class="col-sm-4 control-label" style="text-align: left">

						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="password" name="password"
								placeholder="请输入密码">
						</div>
					</div>
					<div class="form-group">
						<label for="confirmedPassword" class="col-sm-2 control-label">确认密码</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="confirmedPassword" name="confirmedPassword"
								placeholder="请输入确认密码">
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
						<div class="col-sm-6">
							<input type="email" class="form-control" id="inputEmail3" name="email"
								placeholder="Email">
						</div>
					</div>
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">姓名</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="请输入姓名">
						</div>
					</div>
					<div class="form-group opt">
						<label for="male" class="col-sm-2 control-label">性别</label>
						<div class="col-sm-6">
							<label class="radio-inline control-label">
                                <input type="radio" name="sex" id="male" value="male">
								男
							</label>
                            <label class="radio-inline control-label">
                                <input type="radio" name="sex" id="female" value="female">
								女
							</label>
							<label class="error control-label" for="sex" style="display: none" >
								请选择性别
							</label>
						</div>
					</div>
					<div class="form-group">
						<label for="birthday" class="col-sm-2 control-label">出生日期</label>
						<div class="col-sm-6">
							<input type="date" class="form-control" id="birthday" name="birthday">
						</div>
					</div>
					<div class="form-group">
						<label for="telephone" class="col-sm-2 control-label">手机号码</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="telephone" name="telephone">
						</div>
					</div>

					<div class="form-group">
						<label for="checkCode" class="col-sm-2 control-label">验证码</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="checkCode" name="checkCode">
						</div>
						<div class="col-sm-2" onclick="changeCheckImage()">
							<img src="${pageContext.request.contextPath}/checkImage" id="checkImage"/>
						</div>

					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" width="100" value="注册" name="submit"
								style="background: url('${pageContext.request.contextPath}/images/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0); height: 35px; width: 100px; color: white;">
						</div>
					</div>
				</form>
			</div>

			<div class="col-md-2"></div>

		</div>
	</div>

	<!-- 引入footer.jsp -->
	<jsp:include page="footer.jsp"/>

</body>

</html>




