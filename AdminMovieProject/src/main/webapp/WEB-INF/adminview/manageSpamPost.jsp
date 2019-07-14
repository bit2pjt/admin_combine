<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
/**
* @Class Name :  index.jsp
* @Description : index
* @Modification Information
* @
* @  수정일      수정자              수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.12     한유진      최초생성
*
* @author BIT 116기 2조
* @since 2019. 07.01
* @version 1.0
* @see
*
*  Copyright (C) by bit 2조 All right reserved.
*/
-->
<%@ include file="../header.jsp"%>
			<!-- page title area start -->
			<div class="page-title-area">
				<div class="row align-items-center">
					<div class="col-sm-6">
						<div class="breadcrumbs-area clearfix">
							<h4 class="page-title pull-left">Dashboard</h4>
							<ul class="breadcrumbs pull-left">
								<li><a href="index.html">Home</a></li>
								<li><span>Dashboard</span></li>
							</ul>
						</div>
					</div>
					<!-- <div class="col-sm-6 clearfix">
                        <div class="user-profile pull-right">
                            <img class="avatar user-thumb" src="resources/images/author/avatar.png" alt="avatar">
                            <h4 class="user-name dropdown-toggle" data-toggle="dropdown">Kumkum Rai <i
                                    class="fa fa-angle-down"></i></h4>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Message</a>
                                <a class="dropdown-item" href="#">Settings</a>
                                <a class="dropdown-item" href="#">Log Out</a>
                            </div>
                        </div>
                    </div> -->
				</div>
			</div>
			<!-- page title area end -->
			<div class="main-content-inner">
				<div class="row">
					<!-- seo fact area start -->
					<div class="col-lg-8">
						<div class="row">
							<div class="col-md-6 mt-5 mb-3">
								<div class="card">
									<div class="seo-fact sbg1">
										<div
											class="p-4 d-flex justify-content-between align-items-center">
											<div class="seofct-icon">
												<i class="ti-thumb-up"></i> Likes
											</div>
											<h2>2,315</h2>
										</div>
										<canvas id="seolinechart1" height="50"></canvas>
									</div>
								</div>
							</div>
							<div class="col-md-6 mt-md-5 mb-3">
								<div class="card">
									<div class="seo-fact sbg2">
										<div
											class="p-4 d-flex justify-content-between align-items-center">
											<div class="seofct-icon">
												<i class="ti-share"></i> Share
											</div>
											<h2>3,984</h2>
										</div>
										<canvas id="seolinechart2" height="50"></canvas>
									</div>
								</div>
							</div>
							<div class="col-md-6 mb-3 mb-lg-0">
								<div class="card">
									<div class="seo-fact sbg3">
										<div
											class="p-4 d-flex justify-content-between align-items-center">
											<div class="seofct-icon">Impressions</div>
											<canvas id="seolinechart3" height="60"></canvas>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="card">
									<div class="seo-fact sbg4">
										<div
											class="p-4 d-flex justify-content-between align-items-center">
											<div class="seofct-icon">New Users</div>
											<canvas id="seolinechart4" height="60"></canvas>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- seo fact area end -->
					<!-- Social Campain area start -->
					<div class="col-lg-4 mt-5">
						<div class="card">
							<div class="card-body pb-0">
								<h4 class="header-title">Social ads Campain</h4>
								<div id="socialads" style="height: 245px;"></div>
							</div>
						</div>
					</div>
					<!-- Social Campain area end -->
					<!-- Statistics area start -->
					<div class="col-lg-8 mt-5">
						<div class="card">
							<div class="card-body">
								<h4 class="header-title">User Statistics</h4>
								<div id="user-statistics"></div>
							</div>
						</div>
					</div>
					<!-- Statistics area end -->
					<!-- Advertising area start -->
					<div class="col-lg-4 mt-5">
						<div class="card h-full">
							<div class="card-body">
								<h4 class="header-title">Advertising & Marketing</h4>
								<canvas id="seolinechart8" height="233"></canvas>
							</div>
						</div>
					</div>
					<!-- Advertising area end -->


				</div>
			</div>
		</div>
		<!-- main content area end -->
		<%@ include file="../footer.jsp"%>
