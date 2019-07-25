<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
/**
* @Class Name :  adminNoticeUpdate.jsp
* @Description : 관리자 - 공지사항 - 공지사항 수정하기
* @Modification Information
* @
* @  수정일      수정자              수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.25     박현민      최초생성
* 
* @author BIT 116기 2조
* @since 2019. 07.01
* @version 1.0
* @see
*
*  Copyright (C) by bit 2조 All right reserved.
*/
-->
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>srtdash - SEO Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/png"
	href="resources/images/icon/favicon.ico">

<!-- include libraries(jQuery, bootstrap) -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- include summernote css/js -->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>

<!-- 기본테마 -->
<!-- <link rel="stylesheet" href="resources/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/themify-icons.css">
<link rel="stylesheet" href="resources/css/metisMenu.css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/slicknav.min.css">
<!-- amchart css -->
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<!-- others css -->
<link rel="stylesheet" href="resources/css/typography.css">
<link rel="stylesheet" href="resources/css/default-css.css">
<link rel="stylesheet" href="resources/css/styles.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<!--yj : add css-->
<link rel="stylesheet" href="resources/css/modifystyles.css">

<!-- modernizr css -->
<script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- preloader area start -->
	<div id="preloader">
		<div class="loader"></div>
	</div>
	<!-- preloader area end -->
	<!-- page container area start -->
	<div class="page-container">
		<!-- sidebar menu area start -->
		<div class="sidebar-menu">
			<div class="sidebar-header">
				<div class="logo">
					<span style="color: white; font-weight: bold; font-size: 30px;">BlockBuster</span><br>
					<span style="color: white; font-weight: bold; font-size: 20px;">(&nbsp;ADMIN
						SITE&nbsp;)</span>
				</div>
			</div>
			<div class="main-menu">
				<div class="menu-inner">
					<nav>
						<ul class="metismenu" id="menu">
							<li class="active"><a href="javascript:void(0)"
								aria-expanded="true"> <i class="ti-dashboard"></i><span>회원
										관리</span></a>
								<ul class="collapse">
									<li><a href="manageMemberList.do">전체 회원</a></li>
									<li><a href="manageBlackList.do">블랙리스트 회원</a></li>
								</ul></li>
							<li><a href="javascript:void(0)" aria-expanded="true"> <i
									class="ti-layout-sidebar-left"></i><span>게시글 관리</span></a>
								<ul class="collapse">
									<li><a href="manageMemberPost.do">회원 게시글</a></li>
									<li><a href="manageSpamPost.do">신고 게시글</a></li>
								</ul></li>
							<li><a href="javascript:void(0)" aria-expanded="true"><i
									class="ti-pie-chart"></i><span>공지 및 QnA 관리</span></a>
								<ul class="collapse">
									<li><a href="adminNoticeList.do">공지사항</a></li>
									<li><a href="adminQnaList.do">QnA</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<!-- sidebar menu area end -->
		<!-- main content area start -->
		<div class="main-content">
			<!-- header area start -->
			<div class="header-area">
				<div class="row align-items-center">
					<!-- nav button -->
					<div class="col-md-6 col-sm-8 clearfix">
						<div class="nav-btn pull-left">
							<span></span> <span></span> <span></span>
						</div>
					</div>
					<div class="col-sm-6 clearfix">
						<div class="user-profile pull-right">
							<img class="avatar user-thumb"
								src="resources/images/author/avatar.png" alt="avatar">
							<h4 class="user-name dropdown-toggle" data-toggle="dropdown">
								관리자 <i class="fa fa-angle-down"></i>
							</h4>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">Log Out</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- header area end -->


			<!-- page title area start -->
			<div class="page-title-area">
				<div class="row align-items-center">
					<div class="col-sm-6">
						<div class="breadcrumbs-area clearfix">
							<h4 class="page-title pull-left">공지사항 수정하기</h4>
							<ul class="breadcrumbs pull-left">
								<li><a href="/admin/">Home</a></li>
								<li><a href="/admin/adminNoticeList.do">공지사항</a></li>
								<li><span>공지사항 수정하기</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- page title area end -->
			<div class="main-content-inner">
				<div class="row">
					<!-- data table start -->
					<div class="col-12 mt-5">
						<div class="card2">
							<div class="card-body2">
								<div class="content-body">
									<form method="post">
										<!-- 1. 제목 -->
										<div class="form-group">
											<label for="example-text-input" class="col-form-label">제목</label>
											<input class="form-control" type="text" value="제목을 입력하세요."
												id="">
										</div>

										<label for="example-text-input" class="col-form-label">내용</label>
										<!-- 2. 썸머노트 -->
										<textarea id="summernote" name="editordata"
											style="resize: none;"></textarea>


										<!-- 3. 글쓰기 버튼 -->
										<div style="text-align: right">
											<button type="submit" class="btn btn-dark mb-3"
												onclick="location.href=''">수정하기</button>

											<button type="button" class="btn btn-dark mb-3"
												onclick="location.href='adminNoticeList.do'">취소</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Dark table end -->

			</div>

			<!-- Contextual Classes end -->
		</div>
		<!-- main content area end -->
		<script>
			$(document).ready(function() {
				$('#summernote').summernote({
					placeholder : '내용을 입력해 주세요.',
					tabsize : 2,
					height : 500
				});
			});
		</script>
		<!-- footer area start-->
		<footer>
			<div class="footer-area">
				<p>
					© Copyright 2018. All right reserved. Template by <a
						href="https://colorlib.com/wp/">Colorlib</a>.
				</p>
			</div>
		</footer>
		<!-- footer area end-->
	</div>
	<!-- page container area end -->

	<!-- jquery latest version -->
	<!-- 	<script src="resources/js/vendor/jquery-2.2.4.min.js"></script>  -->
	<!-- bootstrap 4 js -->
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/metisMenu.min.js"></script>
	<script src="resources/js/jquery.slimscroll.min.js"></script>
	<!-- <script src="resources/js/jquery.slicknav.min.js"></script> -->

	<!-- start chart js -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
	<!-- start highcharts js -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<!-- start amcharts -->
	<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
	<script src="https://www.amcharts.com/lib/3/ammap.js"></script>
	<script src="https://www.amcharts.com/lib/3/maps/js/worldLow.js"></script>
	<script src="https://www.amcharts.com/lib/3/serial.js"></script>
	<script
		src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
	<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
	<!-- all line chart activation -->
	<script src="resources/js/line-chart.js"></script>
	<!-- all pie chart -->
	<script src="resources/js/pie-chart.js"></script>
	<!-- all bar chart -->
	<script src="resources/js/bar-chart.js"></script>
	<!-- all map chart -->
	<script src="resources/js/maps.js"></script>
	<!-- others plugins -->
	<script src="resources/js/plugins.js"></script>
	<script src="resources/js/scripts.js"></script>
</body>

</html>