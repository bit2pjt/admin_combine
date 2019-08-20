<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
/**
* @Class Name :  header.jsp
* @Description : header
* @Modification Information
* @
* @  수정일      수정자              수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.12     한유진      최초생성
* @ 2019.07.13     한유진      전체수정
* @ 2019.08.10     박현민   제이쿼리 추가
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
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
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

<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<style type="text/css" data-author="zingchart"></style>
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
					<a href="/admin/"><span style="color: white; font-weight: bold; font-size: 30px;">BlockBuster</span></a><br>
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
									<li><a href="manageMemberList">전체 회원</a></li>
									<li><a href="manageBlackList">블랙리스트 회원</a></li>
									<li><a href="manageMemberOutList">탈퇴신청 회원</a></li>
								</ul></li>
							<li><a href="javascript:void(0)" aria-expanded="true"> <i
									class="ti-layout-sidebar-left"></i><span>게시글 관리</span></a>
								<ul class="collapse">
									<li><a href="boardAllList">전체 게시글</a></li>
									<li><a href="boardSpamPost">신고 게시글</a></li>
									<li><a href="boardSpamReply">신고 댓글</a></li>
								</ul></li>
							<li><a href="javascript:void(0)" aria-expanded="true"><i
									class="ti-pie-chart"></i><span>공지 및 QnA 관리</span></a>
								<ul class="collapse">
									<li><a href="noticeList">공지사항</a></li>
									<li><a href="qnaList">QnA</a></li>
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