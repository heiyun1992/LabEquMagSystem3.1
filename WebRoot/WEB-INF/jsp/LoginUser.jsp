<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>

	<meta charset="utf-8" />

	<title>登陆平台</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="${pageScope.basePath }media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="${pageScope.basePath }media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="${pageScope.basePath }media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="${pageScope.basePath }media/css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link href="${pageScope.basePath }media/css/style.css" rel="stylesheet" type="text/css"/>
	<link href="${pageScope.basePath }media/css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="${pageScope.basePath }media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="${pageScope.basePath }media/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<link href="${pageScope.basePath }media/css/login.css" rel="stylesheet" type="text/css"/>
	<link rel="shortcut icon" href="${pageScope.basePath }media/image/favicon.ico" />
</head>
<body class="login">
	<div class="logo">
	</div>
	<div class="content">
		<form class="form-vertical login-form" action="<%=request.getContextPath() %>/admin/loginAdmin">
			<h3 class="form-title">登 录 系 统</h3>
			<div class="alert alert-error hide">
				<button class="close" data-dismiss="alert"></button>
				<span>请输入 用户名 和 密码.</span>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">用户名</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-user"></i>
						<input class="m-wrap placeholder-no-fix" type="text" placeholder="请输入用户名" name="name"/>
					</div>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">密码</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i>
						<input class="m-wrap placeholder-no-fix" type="password" placeholder="请输入密码" name="password"/>
					</div>
				</div>
			</div>
			<div class="form-actions" >
				<div class="btn-group">
					<button type="button" class="btn btn-danger" style="padding-left: 30px;padding-right: 30px;margin-bottom: 20px">请选择身份</button>
					<button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-expanded="false"style="margin-bottom: 20px;padding-left: 12px;padding-right: 35px">
						<span class="caret"></span>
						<span class="sr-only">-----请选择-----</span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">管理员</a></li>
						<li><a href="#">用户</a></li>
						<li><a href="#">测试</a></li>

					</ul>
				</div>

				<label class="checkbox">
				<input type="checkbox" name="remember" value="1"/> 记住密码
				</label>

				<!-- <a href="发布需求.html" class="btn green pull-right"> 登 录 <i class="m-icon-swapright m-icon-white"></i></a> -->
			      <input  type="submit" name="submit" value="登录" class="btn green pull-right" >   
			</div>
			<!-- <div class="forget-password">
				<p>忘记密码了  ?&nbsp;&nbsp;<a href="javascript:;" class="" id="forget-password">密码找回</a>
				</p>
			</div>
			<div class="create-account">
				<p>
					还没有账号 ?&nbsp; 
					<a href="javascript:;" id="register-btn" class="">快速注册</a>
				</p>
			</div> -->
		</form>
		<!-- <form class="form-vertical forget-form" action="#">
			<h3 class="">忘记密码了 ?</h3>
			<p>请输入您注册时使用的邮箱来找回您的密码.</p>
			<div class="control-group">
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-envelope"></i>
						<input class="m-wrap placeholder-no-fix" type="text" placeholder="邮箱" name="email" />
					</div>
				</div>
			</div>
			<div class="form-actions">
				<button type="button" id="back-btn" class="btn">
				<i class="m-icon-swapleft"></i> 返回
				</button>
				<button type="button" class="btn green pull-right">
				找回 <i class="m-icon-swapright m-icon-white"></i>
				</button>            
			</div>
		</form> -->
		<!-- END FORGOT PASSWORD FORM -->
		<!-- BEGIN REGISTRATION FORM -->
		<!-- <form class="form-vertical register-form" action="#">
			<h3 class="">注册用户</h3>
			<p>请填入注册信息：</p>
		<div class="control-group">
				ie8, ie9 does not support html5 placeholder, so we just show field title for that
				<label class="control-label visible-ie8 visible-ie9">邮箱</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-envelope"></i>
						<input class="m-wrap placeholder-no-fix" type="text" placeholder="邮箱" name="email"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">姓名</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-user"></i>
						<input class="m-wrap placeholder-no-fix" type="text" placeholder="姓名" name="username"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">密码</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i>
						<input class="m-wrap placeholder-no-fix" type="password" id="register_password" placeholder="密码 " name="password"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">确认密码</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-ok"></i>
						<input class="m-wrap placeholder-no-fix" type="password" placeholder="确认密码" name="rpassword"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<label class="checkbox">
					<input type="checkbox" name="tnc"/> 我同意协议并注册为系统用户·
					</label>  
					<div id="register_tnc_error"></div>
				</div>
			</div>
			<div>
			<select id="sel">
				<option value=5>5</option></br>
			</select>
				<table>
					<tr>
						<td>验证码：</td>
						<td><input type="text" id="inputRandom" span=1></td>
						<td><label id="autoRandom" value=""></label><input type="button" value="获取验证码 " onClick="autoRandom.innerHTML=createCode(sel.value)"></td>
						<td><input type="button" value="验证" onClick="test()"></td>
					</tr>
				</table>
				<script type="text/javascript">
					window.onload()=autoRandom.innerHTML=createCode(sel.value);
				</script>
			</div>
			<div class="form-actions">
				<button id="register-back-btn" type="button" class="btn">
				<i class="m-icon-swapleft"></i>  返回
				</button>
				<a class="btn green pull-right" href="发布需求.html">
				注册并登陆 <i class="m-icon-swapright m-icon-white"></i>
				</a>            
			</div>
		</form> -->
	</div>

	<div class="copyright">
		2015 &copy; 简历管理平台.
	</div>
	<script src="${pageScope.basePath }media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
	<script src="${pageScope.basePath }media/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="${pageScope.basePath }media/js/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery.uniform.min.js" type="text/javascript" ></script>
	<script src="${pageScope.basePath }media/js/jquery.validate.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/app.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/login.js" type="text/javascript"></script>      
	<script>
	/* jQuery(document).ready(function() {     
		  App.init();
		  Login.init();
		}); */
	</script>
	<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>
</html>