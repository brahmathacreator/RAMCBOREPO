<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<html>

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link href="<spring:theme code='page.style1.path'/>" rel="stylesheet" />
<!-- Custom CSS -->
<link href="<spring:theme code='page.style2.path'/>" rel="stylesheet" />

<!-- Bootstrap Core CSS - RTL -->
<link href="<spring:theme code='page.style3.path'/>" rel="stylesheet" />
<!-- Custom CSS - RTL -->
<link href="<spring:theme code='page.style4.path'/>" rel="stylesheet" />

<!-- Custom Fonts -->
<link href="<spring:theme code='page.font1.path'/>" rel="stylesheet"
	type="text/css" />

<!-- Custom JS -->
<script src="<spring:theme code='page.script0.path'/>"></script>
<!-- jQuery -->
<script src="<spring:theme code='page.script1.path'/>"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<spring:theme code='page.script2.path'/>"></script>
<!-- parsley min JavaScript -->
<script src="<spring:theme code='page.script3.path'/>"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script type="text/javascript">
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});

	function navFormSubmit(navigate,navParam,menuId,menuType,curdOpt) {
		document.getElementById("navForm").method = 'post';
		document.getElementById("navParam").value = navParam;
		document.getElementById("navMenuId").value = menuId;
		document.getElementById("navMenuType").value = menuType;
		document.getElementById("CURDOpt").value = curdOpt;
		document.getElementById("navForm").action = navigate;
		document.navForm.submit();
		return false;
	}
</script>

</head>

<body>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only"><spring:message
						code="page.general.txt22" /></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="home"> <sec:authorize
					access="isAuthenticated()">
					<spring:message code="app.name"></spring:message>
				</sec:authorize>
			</a>
		</div>
		<!-- Top Menu Items -->
		<ul class="nav navbar-right top-nav">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown"><i class="fa fa-envelope"></i> <b
					class="caret"></b></a>
				<ul class="dropdown-menu message-dropdown">
					<li class="message-preview"><a href="#">
							<div class="media">
								<span class="pull-left"> <img class="media-object"
									src="http://placehold.it/50x50" alt="">
								</span>
								<div class="media-body">
									<h5 class="media-heading">
										<strong><sec:authorize access="isAuthenticated()">
												<sec:authentication property="principal.username" />
											</sec:authorize></strong>
									</h5>
									<p class="small text-muted">
										<i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
									</p>
									<p>Lorem ipsum dolor sit amet, consectetur...</p>
								</div>
							</div>
					</a></li>
					<li class="message-preview"><a href="#">
							<div class="media">
								<span class="pull-left"> <img class="media-object"
									src="http://placehold.it/50x50" alt="">
								</span>
								<div class="media-body">
									<h5 class="media-heading">
										<strong><sec:authorize access="isAuthenticated()">
												<sec:authentication property="principal.username" />
											</sec:authorize></strong>
									</h5>
									<p class="small text-muted">
										<i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
									</p>
									<p>Lorem ipsum dolor sit amet, consectetur...</p>
								</div>
							</div>
					</a></li>
					<li class="message-preview"><a href="#">
							<div class="media">
								<span class="pull-left"> <img class="media-object"
									src="http://placehold.it/50x50" alt="">
								</span>
								<div class="media-body">
									<h5 class="media-heading">
										<strong>John Smith</strong>
									</h5>
									<p class="small text-muted">
										<i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
									</p>
									<p>Lorem ipsum dolor sit amet, consectetur...</p>
								</div>
							</div>
					</a></li>
					<li class="message-footer"><a href="#">Read All New
							Messages</a></li>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown"><i class="fa fa-bell"></i> <b
					class="caret"></b></a>
				<ul class="dropdown-menu alert-dropdown">
					<li><a href="#">Alert Name <span
							class="label label-default">Alert Badge</span></a></li>
					<li><a href="#">Alert Name <span
							class="label label-primary">Alert Badge</span></a></li>
					<li><a href="#">Alert Name <span
							class="label label-success">Alert Badge</span></a></li>
					<li><a href="#">Alert Name <span class="label label-info">Alert
								Badge</span></a></li>
					<li><a href="#">Alert Name <span
							class="label label-warning">Alert Badge</span></a></li>
					<li><a href="#">Alert Name <span
							class="label label-danger">Alert Badge</span></a></li>
					<li class="divider"></li>
					<li><a href="#">View All</a></li>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown"><i class="fa fa-user"></i> <sec:authorize
						access="isAuthenticated()">
						<sec:authentication property="principal.userInfo.userName" />
					</sec:authorize> <b class="caret"></b></a>
				<ul class="dropdown-menu">

					<li><a href="#"><i class="fa fa-fw fa-user"></i> <sec:authorize
								access="isAuthenticated()">
								<spring:message code="menu.default.profile" />
							</sec:authorize></a></li>
					<li><a href="#"><i class="fa fa-fw fa-envelope"></i> <sec:authorize
								access="isAuthenticated()">
								<spring:message code="menu.default.inbox" />
							</sec:authorize></a></li>
					<li><a href="#"><i class="fa fa-fw fa-gear"></i> <sec:authorize
								access="isAuthenticated()">
								<spring:message code="menu.default.settings" />
							</sec:authorize></a></li>
					<li class="divider"></li>
					<li><a href="#"
						onclick="return navFormSubmit('navigate','logout');"><i
							class="fa fa-fw fa-power-off"></i> <spring:message
								code="menu.default.logout" /></a></li>

				</ul></li>
		</ul>
		<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav side-nav">
				<sec:authentication property="principal.userInfo.parentURLList"
					var="parent" />
				<sec:authentication property="principal.userInfo.childURLList"
					var="child" />
				<sec:authentication property="principal.userInfo.conCatRoles"
					var="roles" />
				<sec:authorize access="hasAnyRole('${roles}')">
					<c:forEach var="p" items="${parent}">
						<c:choose>
							<c:when test="${p.hasChild eq 1}">
								<li><a href="javascript:;" data-toggle="collapse"
									data-target="#p_${p.menuId}"><i class="${p.iconName}"></i>
										${p.menuName} <i class="fa fa-fw fa-caret-down"></i></a>
									<ul id="p_${p.menuId}" class="collapse">
										<c:forEach var="c" items="${child}">
											<c:if
												test="${(p.userDefMenuKey eq c.menuMaster) and (c.menuType eq 1) }">
												<li><a href="#"
													onclick="return navFormSubmit('navigate','${c.menuURL}','${c.menuId}','1','4');"><i
														class="${c.iconName}"></i>&nbsp;${c.menuName}</a></li>
											</c:if>
										</c:forEach>
									</ul></li>
							</c:when>
							<c:otherwise>
								<li><a href="#"
									onclick="return navFormSubmit('navigate','${p.menuURL}','${p.menuId}','1','4');"><i
										class="${p.iconName}"></i> ${p.menuName}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</sec:authorize>
			</ul>
		</div>
		<!-- /.navbar-collapse --> </nav>

		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							<sec:authentication
								property="principal.currentUrlDetails.menuName" />
							<small><sec:authentication
									property="principal.currentUrlDetails.menuDesc" /></small>
						</h1>
						<ol class="breadcrumb">
							<li><i
								class="<sec:authentication
										property='principal.currentUrlDetails.iconName' />"></i>
								<a
								onclick="return navFormSubmit('navigate',<sec:authentication
									property='principal.currentUrlDetails.menuURL' />,<sec:authentication
									property='principal.currentUrlDetails.menuId' />,'1','4');"
								href="#"><sec:authentication
										property="principal.currentUrlDetails.menuName" /></a></li>
							<li class="active"><i
								class="<sec:authentication
										property='principal.currentUrlDetails.pageIconName' />"></i>
								<sec:authentication
									property="principal.currentUrlDetails.pageMenuURL" /></li>
						</ol>
					</div>
				</div>
				<!-- /.row -->

				<!-- Page Content -->
				<div class="row">
					<div class="col-lg-12">
						<form id="navForm" name="navForm">
							<input type="hidden" name="navParam" id="navParam" /> <input
								type="hidden" name="navMenuId" id="navMenuId" /> <input
								type="hidden" name="navMenuType" id="navMenuType" /> <input
								type="hidden" name="CURDOpt" id="CURDOpt" /> <input
								type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
						<section id="site-content"> <tiles:insertAttribute
							name="body" /> </section>
					</div>
				</div>
				<!-- /.row -->

			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- /#page-wrapper -->
	</div>
</body>
</html>