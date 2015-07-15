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
<meta charset="utf-8">
<title>实验室设备管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Bluth Company">
<link rel="shortcut icon" href="${pageScope.basePath }assets/ico/favicon.html">
<link href="${pageScope.basePath }assets/css/bootstrap.css" rel="stylesheet">
<link href="${pageScope.basePath }assets/css/theme.css" rel="stylesheet">
<link href="${pageScope.basePath }assets/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageScope.basePath }assets/css/alertify.css" rel="stylesheet">
<link href="http://fonts.useso.com/css?family=Open+Sans:400,700"
	rel="stylesheet" type="text/css">
<link rel="Favicon Icon" href="favicon.ico">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
	<div id="wrap">
		<div class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container-fluid">
					<div class="logo">
						<img src="${pageScope.basePath }assets/img/logo.png" alt="Realm Admin Template">
					</div>
					<a class="btn btn-navbar visible-phone" data-toggle="collapse"
						data-target=".nav-collapse"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a> <a class="btn btn-navbar slide_menu_left visible-tablet"> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
					</a>

					<div class="top-menu visible-desktop">
						<ul class="pull-left">
							<li><a id="messages" data-notification="2" href="#"><i
									class="icon-envelope"></i>通知消息 </a></li>
							<li><a id="notifications" data-notification="3" href="#"><i
									class="icon-globe"></i>紧急消息</a></li>
						</ul>
						<ul class="pull-right">
							<li><a href="${pageScope.basePath }user/loginout"><i class="icon-off"></i> 注销</a></li>
						</ul>
					</div>

					<div class="top-menu visible-phone visible-tablet">
						<ul class="pull-right">
							<li><a
								title="link to View all Messages page, no popover in phone view or tablet"
								href="#"><i class="icon-envelope"></i></a></li>
							<li><a
								title="link to View all Notifications page, no popover in phone view or tablet"
								href="#"><i class="icon-globe"></i></a></li>
							<li><a href="login.html"><i class="icon-off"></i></a></li>
						</ul>
					</div>

				</div>
			</div>
		</div>

		<div class="container-fluid">

			<!-- Side menu -->
			<div class="sidebar-nav nav-collapse collapse">
				<div class="user_side clearfix">
					<img src="${pageScope.basePath }assets/img/odinn.jpg" alt="Odinn god of Thunder">
					<h5>${admin.name}</h5>
					<a href="#"><i class="icon-cog"></i>设置</a>
				</div>
				<div class="accordion" id="accordion2">
					<div class="accordion-group">
						<div class="accordion-heading">
							<a class="accordion-toggle b_C3F7A7 collapsed"
								data-toggle="collapse" data-parent="#accordion2"
								href="#collapse4"><i class="icon-dashboard"></i> <span>设备管理</span></a>
						</div>
						<div id="collapse4" class="accordion-body collapse">
							<div class="accordion-inner">
								 <a class="accordion-toggle" href="${pageScope.basePath }equipment/getAllEquipment"><i class="icon-star"></i> 仪器列表</a>
								 <a class="accordion-toggle" href="${pageScope.basePath }equipment/addEquipment1"><i class="icon-star"></i> 添加仪器</a> 
								 <a class="accordion-toggle" href="${pageScope.basePath }loan/getAllLoanEquipment"><i class="icon-list-alt"></i> 已借仪器</a> 
								 <a class="accordion-toggle" href="${pageScope.basePath }loan/addLoanEquipment1"><i class="icon-list-alt"></i> 出借登记</a> 
						         <a class="accordion-toggle" href="${pageScope.basePath }LoanHistory/getAllLoanHistory"><i class="icon-table"></i>出借历史</a>
								 <a class="accordion-toggle" href="index2.jsp"><i class="icon-table"></i> 报销仪器</a>
								 
							</div>
						</div>
					</div>
					<div class="accordion-group">
						<div class="accordion-heading">
							<a class="accordion-toggle b_C3F7A7 collapsed" data-toggle="collapse" data-parent="#accordion2"
								href="#collapse3"><i class="icon-user"></i> <span>管理员</span></a>
						</div>
						<div id="collapse3" class="accordion-body collapse">
							<div class="accordion-inner">
								<a class="accordion-toggle" href="#"><i class="icon-star"></i> 一级管理员</a> 
								<a class="accordion-toggle" href="#"><i class="icon-list-alt"></i> 二级管理员</a> 
								<a class="accordion-toggle" href="#"><i class="icon-table"></i> 三级管理员</a>
								<a class="accordion-toggle" href="${pageScope.basePath }admin/addAdmin1"><i class="icon-table"></i> 添加管理员</a>
								<a class="accordion-toggle" href="${pageScope.basePath }admin/getAllAdmin"><i class="icon-table"></i> 管理员列表</a>
								<a class="accordion-toggle" href="#"><i class="icon-table"></i> 权限管理</a>
								
							</div>
						</div>
					</div>
					<div class="accordion-group">
						<div class="accordion-heading">
							<a class="accordion-toggle b_C3F7A7 collapsed"
								data-toggle="collapse" data-parent="#accordion2"
								href="#collapse1"><i class="icon-magic"></i> <span>报表统计</span></a>
						</div>
						<div id="collapse1" class="accordion-body collapse">
							<div class="accordion-inner">
								<a class="accordion-toggle" href="ui_features.html"><i class="icon-star"></i> UI Features</a> 
								<a class="accordion-toggle" href="forms.html"><i class="icon-list-alt"></i> Forms</a> 
								<a class="accordion-toggle" href="tables.html"><i class="icon-table"></i> Tables</a> 
								<a class="accordion-toggle" href="buttons.html"><i class="icon-circle"></i> Buttons</a>
							</div>
						</div>
					</div>
					<div class="accordion-group">
						<div class="accordion-heading">
							<a class="accordion-toggle b_9FDDF6 collapsed"
								data-toggle="collapse" data-parent="#accordion2"
								href="#collapse2"><i class="icon-reorder"></i> <span>Components</span></a>
						</div>
						<div id="collapse2" class="accordion-body collapse">
							<div class="accordion-inner">
								<a class="accordion-toggle" href="notifications.html"><i class="icon-rss"></i> Notifications</a> 
								<a class="accordion-toggle" href="calendar.html"><i class="icon-calendar"></i> Calendar</a>
								<a class="accordion-toggle" href="gallery.html"><i class="icon-picture"></i> Gallery</a>
							</div>
						</div>
					</div>
					<div class="accordion-group">
						<div class="accordion-heading">
							<a class="accordion-toggle b_F6F1A2" href="tasks.html"><i class="icon-tasks"></i> <span>Tasks</span></a>
						</div>
					</div>
					<div class="accordion-group">
						<div class="accordion-heading">
							<a class="accordion-toggle b_C1F8A9" href="analytics.html"><i class="icon-bar-chart"></i> <span>Analytics</span></a>
						</div>
					</div>
					<div class="accordion-group">
						<div class="accordion-heading">
							<a class="accordion-toggle b_9FDDF6" href="tickets.html"><i class="icon-bullhorn"></i> <span>Support Tickets</span></a>
						</div>
					</div>
					
					</div>
				</div>
				<div class="main_container" id="dashboard_page1">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>设备名称</th>
									<th>设备类别</th>
									<th>设备型号</th>
									<th>设备价格</th>
									<th>制造厂家</th>
									<th>购买日期</th>
									<th>当前状态</th>
								</tr>
							</thead>
							<c:forEach var="list" items="${equipmentLists}">
								<tr>
									<td>${list.name}</td>
									<td>${list.type}</td>
									<td>${list.models}</td>
									<td>${list.price}</td>
									<td>${list.vender}</td>
									<td>${list.purchase_date}</td>
									<td>${list.state}</td>
								</tr>
							</c:forEach>
						</table>	
						<div class="pagination">
					<ul>
						<li><a href="${pageScope.basePath }equipment/getAllEquipment?pageNow=1">首页</a></li>
						<c:choose>
							<c:when test="${page.pageNow - 1 > 0}">
								<li><a href="${pageScope.basePath }equipment/getAllEquipment?pageNow=${page.pageNow - 1}">上一页</a></li>
							</c:when>
							<c:when test="${page.pageNow - 1 <= 0}">
								<li><a href="${pageScope.basePath }equipment/getAllEquipment?pageNow=1">上一页</a></li>
							</c:when>
						</c:choose>

						<c:forEach var="item" varStatus="status" begin="1"
							end="${page.pageNow-1}">
							<li><a href="${pageScope.basePath }equipment/getAllEquipment?pageNow=${status.index}">${status.index}</a></li>
						</c:forEach>
						<li class="active"><a
							href="${pageScope.basePath }equipment/getAllEquipment?pageNow=${page.pageNow}">${page.pageNow}</a></li>
						<c:forEach var="item" varStatus="status" begin="${page.pageNow+1}"
							end="${page.totalPageCount}">
							<li><a href="${pageScope.basePath }equipment/getAllEquipment?pageNow=${status.index}">${status.index}</a></li>
						</c:forEach>
						<c:choose>
							<c:when test="${page.totalPageCount==0}">
								<li><a href="${pageScope.basePath }equipment/getAllEquipment?pageNow=${page.pageNow}">下一页</a></li>
							</c:when>
							<c:when test="${page.pageNow + 1 < page.totalPageCount}">
								<li><a href="${pageScope.basePath }equipment/getAllEquipment?pageNow=${page.pageNow + 1}">下一页</a></li>
							</c:when>
							<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
								<li><a href="${pageScope.basePath }equipment/getAllEquipment?pageNow=${page.totalPageCount}">下一页</a></li>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${page.totalPageCount==0}">
								<li><a href="${pageScope.basePath }equipment/getAllEquipment?pageNow=${page.pageNow}">尾页</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="${pageScope.basePath }equipment/getAllEquipment?pageNow=${page.totalPageCount}">尾页</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>				
			</div>
		</div>
	</div>

<script type="text/javascript" src="${pageScope.basePath }assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }assets/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }assets/js/raphael-min.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }assets/js/bootstrap.js"></script>
	<script type="text/javascript" src='${pageScope.basePath }assets/js/sparkline.js'></script>
	<script type="text/javascript" src='${pageScope.basePath }assets/js/morris.min.js'></script>
	<script type="text/javascript" src="${pageScope.basePath }assets/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }assets/js/jquery.masonry.min.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }assets/js/jquery.imagesloaded.min.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }assets/js/jquery.facybox.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }assets/js/jquery.alertify.min.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }assets/js/jquery.knob.js"></script>
	<script type='text/javascript' src='${pageScope.basePath }assets/js/fullcalendar.min.js'></script>
	<script type='text/javascript' src='${pageScope.basePath }assets/js/jquery.gritter.min.js'></script>
	<script type="text/javascript" src="${pageScope.basePath }assets/js/realm.js"></script>
	<script type="text/javascript" src="${pageScope.basePath }assets/js/jquery.slimscroll.min.js"></script>
</body>
</html>
