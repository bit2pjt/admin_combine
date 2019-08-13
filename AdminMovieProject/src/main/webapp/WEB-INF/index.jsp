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
* @ 2019.07.13     한유진      전체수정
*
* @author BIT 116기 2조
* @since 2019. 07.01
* @version 1.0
* @see
*
*  Copyright (C) by bit 2조 All right reserved.
*/
-->
<%@ include file="header.jsp"%>
			<!-- page title area start -->
			<div class="page-title-area">
				<div class="row align-items-center">
					<div class="col-sm-6">
						<div class="breadcrumbs-area clearfix">
							<h4 class="page-title pull-left">Dashboard</h4>
							<ul class="breadcrumbs pull-left">
								<li><a href="/admin/">Home</a></li>
								<li><span>Dashboard</span></li>
							</ul>
						</div>
					</div>
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
												<i class="ti-thumb-up"></i> 회원수
											</div>
											<h2>1</h2>
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
												<i class="ti-share"></i> 게시글수
											</div>
											<h2>0</h2>
										</div>
										<canvas id="seolinechart2" height="50"></canvas>
									</div>
								</div>
							</div>
							<div class="col-md-6 mt-5 mb-3">
								<div class="card">
									<div class="seo-fact sbg1">
										<div
											class="p-4 d-flex justify-content-between align-items-center">
											<div class="seofct-icon">
												<i class="ti-thumb-up"></i> 회원수
											</div>
											<h2>1</h2>
										</div>
										<canvas id="seolinechart1" height="50"></canvas>
									</div>
								</div>
							</div>
							<div class="col-md-6 mt-5 mb-3">
								<div class="card">
									<div class="seo-fact sbg1">
										<div
											class="p-4 d-flex justify-content-between align-items-center">
											<div class="seofct-icon">
												<i class="ti-thumb-up"></i> 회원수
											</div>
											<h2>1</h2>
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
												<i class="ti-share"></i> 게시글수
											</div>
											<h2>0</h2>
										</div>
										<canvas id="seolinechart2" height="50"></canvas>
									</div>
								</div>
							</div>
							<div class="col-md-6 mt-md-5 mb-3">
								<div class="card">
									<div class="seo-fact sbg2">
										<div
											class="p-4 d-flex justify-content-between align-items-center">
											<div class="seofct-icon">
												<i class="ti-share"></i> 게시글수
											</div>
											<h2>0</h2>
										</div>
										<canvas id="seolinechart2" height="50"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- seo fact area end -->
						
				
					<!-- Advertising area start -->
					<div class="col-lg-4 mt-5">
						<div class="card h-full">
							<div class="card-body">
								<h4 class="header-title">사용자</h4>
								<canvas id="seolinechart8" height="233"></canvas>
							</div>
						</div>
					</div>
					<!-- Advertising area end -->


				</div>
			</div>
		</div>
		<!-- main content area end -->
		<%@ include file="footer.jsp"%>
