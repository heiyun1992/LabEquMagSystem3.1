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
	<title>仪器列表</title>
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
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link rel="stylesheet" type="text/css" href="${pageScope.basePath }media/css/select2_metro.css" />
	<link rel="stylesheet" href="${pageScope.basePath }media/css/DT_bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageScope.basePath }media/css/datepicker.css" />
    <link href="${pageScope.basePath }media/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <link href="${pageScope.basePath }media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<!-- END PAGE LEVEL STYLES -->
	<link rel="shortcut icon" href="${pageScope.basePath }media/image/favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
	<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="navbar-inner">
        <div class="container-fluid">
            <!-- BEGIN LOGO -->
            <a class="brand" href="#">
                实验室设备管理平台 </a>
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                <img src="${pageScope.basePath }media/image/menu-toggler.png" alt=""/>
            </a>
            <ul class="nav pull-right">
                <li class="dropdown user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img alt="" src="${pageScope.basePath }media/image/avatar1_small.jpg"/>
                        <span class="username">${admin.name}</span>
                        <i class="icon-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href=""><i class="icon-user"></i> 修改密码</a></li>
                        <li><a href=""><i class="icon-calendar"></i> 退出系统</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- END TOP NAVIGATION BAR -->
</div>
	<!-- END HEADER -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container row-fluid">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar nav-collapse collapse">
			<ul class="page-sidebar-menu">
				<li>
					<br>
				</li>
				<li class="">
					<a href="需求管理.html">
						<i class="icon-briefcase"></i>
						<span class="title">需求管理</span>
					</a>
				</li>
				<li class="">
					<a href="">
						<i class="icon-bookmark-empty"></i>
						<span class="title">需求发布</span>
					</a>
					<ul class="sub-menu">
						<li >
							<a href="发布需求.html">
							添加需求</a>
						</li>
						<li >
							<a href="需求一览.html">
							需求预览</a>
						</li>
					</ul>
				</li>
				<li class="">
					<a href="">
					<i class="icon-cogs"></i> 
					<span class="title">录入简历</span>
					</a>
					<ul class="sub-menu">
						<li >
							<a href="添加简历.html">
							手动添加简历</a>
						</li>
						<li >
							<a href="上传电子简历.html">
							上传电子简历</a>
						</li>
					</ul>

				</li>
				


				<li class="">
					<a href="简历一览.html">
					<i class="icon-table"></i> 
					<span class="title">站内简历</span>
					</a>
				</li>

		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->
				<div class="row-fluid">
					<div class="span12">
						<h3 class="page-title">
							 简历管理<small>&nbsp;站内简历预览</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">简历系统</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li>
								<a href="#">站内简历</a>
							</li>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				<div class="row-fluid">
					<div class="span12">
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-reorder"></i>站内简历</div>
								
							</div>
							<div class="portlet-body">
								<table class="table table-striped table-hover table-bordered" id="sample_editable_1">
									<thead>
										<tr>
											<th style="width:8px;"><input type="checkbox" class="group-checkable" data-set="#sample_editable_1 .checkboxes"/></th>
											<th>设备名称</th>
											<th>设备类别</th>
											<th>设备型号</th>
											<th>设备价格</th>
											<th>制造厂家</th>
											<th>购买日期</th>
											<th>当前状态</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody id="newbody">
									<c:forEach var="list" items="${equipmentLists}">
										<tr class="">
											<td><input type="checkbox" class="checkboxes" value="1" /></td>
											<td><a class="btn mini" href="个人简历预览1.html">${list.name}</a></td>
											<td>${list.type}</td>
											<td class="center">${list.models}</td>
											<td>${list.price}</td>
											<td>${list.vender}</td>
											<td>${list.purchase_date}</td>
											<td>${list.state}</td>
											<td><a class="delete btn mini red" href="#" > 删除</a></td>
										</tr>	
										</c:forEach>				
									</tbody>
								</table>
							</div>
						</div>
						<!-- END EXAMPLE TABLE PORTLET-->
					</div>
				</div>
				<!-- END PAGE CONTENT -->
			</div>
			<!-- END PAGE CONTAINER-->
		</div>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="footer">
		<div class="footer-inner">
			2015 &copy; 实验室设备管理系统.
		</div>
		<div class="footer-tools">
			<span class="go-top">
			<i class="icon-angle-up"></i>
			</span>
		</div>
	</div>
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<script src="${pageScope.basePath }media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="${pageScope.basePath }media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
	<script src="${pageScope.basePath }media/js/bootstrap.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
	<script src="media/js/excanvas.min.js"></script>
	<script src="media/js/respond.min.js"></script>  
	<![endif]-->   
	<script src="${pageScope.basePath }media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="${pageScope.basePath }media/js/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="${pageScope.basePath }media/js/jquery.uniform.min.js" type="text/javascript" ></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script type="text/javascript" src="${pageScope.basePath }media/js/select2.min.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }media/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }media/js/DT_bootstrap.js"></script>
    <script type="text/javascript" src="${pageScope.basePath }media/js/bootstrap-datepicker.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="${pageScope.basePath }media/js/app.js"></script>
	<script src="${pageScope.basePath }media/js/table-editable.js"></script> 
    <script src="${pageScope.basePath }media/js/ui-modals.js"></script> 
    <script src="${pageScope.basePath }media/js/form-components.js"></script>    
    
	<script>
		jQuery(document).ready(function() {       
		   App.init();
		   TableEditable.init();
		   FormComponents.init();
		});
		function removeRow(){
			/* var row=document.getElementById("2"); 
			　var index=row.rowIndex;
			alert(index);*/
			document.getElementById("newbody").deleteRow(document.getElementById(document.getElementById("table").rows.length).rowIndex);
			};
	</script>
	<!-- <script>
    $(function () {
        //查找id=tab的表格，下面所有的tr，下面的所有td，第一个td下面复习框的点击事件。
        $("#sample_editable_1 tr>td:nth-child(1)").find("input[type='checkbox']").bind("click", function () {
            if ($(this).attr("checked") == true) {
                $(this).parent().nextAll().find("input[type='checkbox']").attr("checked", true);
            }
            else {
                $(this).parent().nextAll().find("input[type='checkbox']").attr("checked", false);
            }
        })
    })
</script> -->
<!-- END BODY -->
</html>
