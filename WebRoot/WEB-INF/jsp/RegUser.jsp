<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
 <base href="<%=basePath%>">
    <meta charset="utf-8">   
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>实验室设备管理平台</title>
    <!-- <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content=""> -->
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link href="Resource/lib/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="Resource/lib/bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="Resource/stylesheets/theme.css">
    <link rel="stylesheet" href="Resource/lib/font-awesome/css/font-awesome.css">
     <link rel="stylesheet" type="text/css" href="css/span.css">

    <script src="Resource/lib/jquery-1.7.2.min.js" type="text/javascript"></script>
  	 <script src="js/jquery.js"type="text/javascript" charset="gb2312"></script>
	<script src="js/register.js"type="text/javascript" charset="gb2312"></script>

	<%-- <script type="text/javascript" >
    
          $(document).ready( function(){ 
          				$("#name").blur(function(){  
						var params=$("#name").serialize(); 
						$.ajax({  url:"check.action", type:"post",  dataType:"json", data:params, success:function(info){
							var json=eval(info); 
							 var str=json.info;  
							
							$("#name1").html(str);
						} });
						
						 }); 
						}); 

			
  	</script> --%>
    <style type="text/css">
        #line-chart {
            height: 300px;
            width: 800px;
            margin: 0px auto;
            margin-top: 1em;
        }

        .brand {
            font-family: georgia, serif;
        }

            .brand .first {
                color: #ccc;
                font-style: italic;
            }

            .brand .second {
                color: #fff;
                font-weight: bold;
            }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="lib/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
    
  
</head>

<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
<!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
<!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body class="">
    <!--<![endif]-->

    <div class="navbar">
        <div class="navbar-inner">
            <ul class="nav pull-right">
            </ul>
            <a class="brand" href="index.jsp"><span class="first"></span><span class="second">飞跃软件工场信息管理平台</span></a>
        </div>
    </div>



    <div class="row-fluid">
        <div class="dialog">
            <div class="block">
                <p class="block-heading">注册用户信息</p>
                <div class="block-body">
                    <form action="<%=request.getContextPath() %>/user/register" method="post" onsubmit="return registers('click')">
                     <div class="control-group" id="name2">
                        <label class="control-label">您的真实姓名：</label>
                        <div class="controls">
                        <input type="text" id="name" class="span12" name="name" value="" >
                        <span class="stats1" id="name1">请填写您的真实姓名</span>
                        </div>
                       </div>
                       <div class=" control-group" id="idcard2">
                        <label class="control-label">您的性别：</label>
                        <div class="controls">
                        <input type="text" id="sex" class="span12" name="sex" ">
                        <span class="stats1" id="idcard1">请选择您的性别</span>
                        </div>
                       </div>
                       
                       <div class=" control-group" id="phone2">
                        <label class="control-label">您的教师编号：</label>
                        <div class="controls">
                        <input type="text" id="teacher_num" class="span12" name="teacher_num" ">
                        <span class="stats1" id="teacher_num">请填写您的教师编号</span>
                        </div>
                       </div>
                       
                       <div class=" control-group" id="email2">
                        <label class="control-label">您的常用手机号码：</label>
                        <div class="controls">
                        <input type="text" id="phone_num" class="span12" name="phone_num">
                        <span class="stats1" id="phone_num">请填写有效的手机号码</span>
                        </div>
                       </div>  
                       
                       <div class=" control-group" id="email2">
                        <label class="control-label">您的常用E—mail邮箱地址：</label>
                        <div class="controls">
                        <input type="text" id="email" class="span12" name="email">
                        <span class="stats1" id="email1">请填写有效的邮箱地址</span>
                        </div>
                       </div>  
                       <div class=" control-group" id="password2">
                        <label class="control-label">您的密码：</label>
                        <div class="controls">
                        <input type="text" id="password" class="span12" name="password" value="${user.password}">
                        <span class="stats1" id="password1">密码须已首字母开头并不少于6位</span>
                        </div>
                       </div>
                        <div class=" control-group" id="npassword2">
                        <label class="control-label">确认密码：</label>
                        <div class="controls">
                        <input type="text" class="span12" id="npassword" name="repassword">
                        <span class="stats1" id="npassword1" onclick="return checkrpass();">请确认您输入的密码与之前输入的保持一致</span>
                        </div>
                       </div>
               
                        <div id="sub1" style="padding:2px; z-index:100;display:inline-block; float:right;"> <input id="sub" type="submit" name="submit" value="注册系统用户" class="btn btn-primary"></div>
                        <div class=" control-group" id="check2">
                        <label class="remember-me">
                        <div class="controls">
                            <input type="checkbox" id="check" value="1">
                            我同意注册</label><span class=" help-inline" id="check1"></span>
                            </div>
                            </div>
                        <div class="clearfix"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>





    <script src="Resource/lib/bootstrap/js/bootstrap.js"></script>
  
</body>
</html>


