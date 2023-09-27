<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>side-bar</title>

<!-- Custom fonts for this template-->
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">
<body>
	<!-- Sidebar -->
	<ul
		class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
		id="accordionSidebar" style="position: fixed; top: 0rem;">

		<!-- Sidebar - Brand -->
		<a
			class="sidebar-brand d-flex align-items-center justify-content-center"
			href="${pageContext.request.contextPath}/main/main">
			<div class="sidebar-brand-icon rotate-n-15">
				<i class="fas fa-laugh-wink"></i>
			</div>
			<div class="sidebar-brand-text mx-3">키포인트</div>
		</a>

		<!-- Divider -->
		<hr class="sidebar-divider my-0">

		<!-- Nav Item - Dashboard -->
		<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/">
				<i class="fas fa-fw fa-tachometer-alt"></i> <span>공지사항</span>
		</a></li> 
		
		<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/">
				<i class="fas fa-fw fa-tachometer-alt"></i> <span>사원관리</span>
		</a></li> 

		<!-- Heading -->


		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseTwo"
			aria-expanded="true" aria-controls="collapseTwo"> <i
				class="fas fa-fw fa-cog"></i> <span>영업관리</span>
		</a>
			<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="buttons.html">수주관리</a> 
					<a class="collapse-item" href="cards.html">출하관리</a>
					<a class="collapse-item" href="${pageContext.request.contextPath}/customer/list">거래처관리</a>
				</div>
			</div></li>

		<!-- Nav Item - Utilities Collapse Menu -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseUtilities"
			aria-expanded="true" aria-controls="collapseUtilities"> <i
				class="fas fa-fw fa-wrench"></i> <span>자재관리</span>
		</a>
			<div id="collapseUtilities" class="collapse"
				aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="${pageContext.request.contextPath}/product/stock/">발주목록</a> 
					<a class="collapse-item" href="${pageContext.request.contextPath}/product/stock/">입고목록</a> 
					<a class="collapse-item" href="${pageContext.request.contextPath}/product/stock/">소요량목록</a>
					<a class="collapse-item" href="${pageContext.request.contextPath}/product/stock">상품목록</a>
				</div>
			</div></li>


		<!-- Heading -->


		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapsePages"
			aria-expanded="true" aria-controls="collapsePages"> <i
				class="fas fa-fw fa-folder"></i> <span>생산관리</span>
		</a>
			<div id="collapsePages" class="collapse"
				aria-labelledby="headingPages" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="${pageContext.request.contextPath}/main/workOrder">작업지시관리</a> 
					<a class="collapse-item" href="${pageContext.request.contextPath}/register.html">라인관리</a> 
					<a class="collapse-item" href="${pageContext.request.contextPath}/forgot-password.html">실적관리</a>
					<div class="collapse-divider"></div>
				</div>
			</div></li>
		<!-- Nav Item - Charts -->
		<li class="nav-item"><a class="nav-link" href="#">
				<i class="fas fa-fw fa-chart-area"></i> <span>품질관리</span>
		</a></li>

		<li class="nav-item"><a class="nav-link"
			href="${pageContext.request.contextPath}/product/stock"> <i
				class="fas fa-fw fa-chart-area"></i> <span>상품재고</span></a></li>
		<!-- Nav Item - Charts -->
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/charts.html">
				<i class="fas fa-fw fa-chart-area"></i> <span>Charts</span>
		</a></li>

		<!-- Nav Item - Tables -->
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/main/tables">
				<i class="fas fa-fw fa-table"></i> <span>Tables</span>
		</a></li>

		<!-- Divider -->
		<hr class="sidebar-divider d-none d-md-block">


	</ul>
	<!-- End of Sidebar -->
	
	 <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath}/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/resources/js/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/demo/chart-pie-demo.js"></script>
	
	
</body>
</html>