<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
 <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>实验室设备信息管理平台</title>
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
    <script src="js/login.js"type="text/javascript" charset="gb2312"></script>

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
<body class="" onload="document.getElementById('form1').email.focus()">
    <!--<![endif]-->
   <div class="navbar">
        <div class="navbar-inner">
            <ul class="nav pull-right">
            </ul>
            <a class="brand" href="index.html"><span class="first"></span><span class="second">实验室设备信息管理平台</span></a>
        </div>
    </div>

    <div class="row-fluid">
        <div class="dialog">
            <div class="block">
                <p class="block-heading">登录信息平台</p>
                <div class="block-body">
                    <form id="form1" action="<%=request.getContextPath() %>/admin/loginAdmin" method="post" onsubmit="return logins('click')">

                    <div id="email2" class=" control-group">
                        <label class="control-label">您的用户名：</label>
                        <div class="controls">
                        <input id="name" type="text" class="span12" name="name">
                        <span class="stats1" id="name">请填写有效的用户名</span>

                   
                        </div>
                       </div>
                       <div id="password2" class="control-group">
                        <label class="control-label">管理平台密码：</label>
                        <div class="controls">
                        <input id="password" type="password" class="span12" name="password" >
                        <span class="stats1" id="password1">密码须以首字母开头并不少于6位</span>
                        </div>
                       </div>
                        <div class="control-group"> 
                            <div class="controls">
                             
                     <div id="sub1" style="padding:2px; z-index:100;display:inline-block; float:right;"> 
                     <input id="sub" type="submit" name="submit" value="登录平台" class="btn btn-primary" ></div>
                        <label class="remember-me">
                            <input type="checkbox">
                            记住我</label>			
                        <div class="clearfix">
                        </div>
                        </div>
                        </div>
                    </form>
                </div>
            </div>
            <p><a href="#">忘记密码?</a> &nbsp;&nbsp;&nbsp;&nbsp;<a href="user/register1">点我注册</a></p>
        </div>
    </div>





    <script src="Resource/lib/bootstrap/js/bootstrap.js"></script>
     

</body>
</html>


