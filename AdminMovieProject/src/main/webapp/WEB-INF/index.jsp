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
							<h4 class="page-title pull-left">사이트 한눈에 보기</h4>
							<ul class="breadcrumbs pull-left">
								<li><a href="/admin/">Home</a></li>
								<li><span>home</span></li>
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
											<h2>12</h2><!-- 여기에 회원수 카운트 추가~~ -->
										</div>
										<canvas id="seolinechart1" height="50"></canvas>
									</div>
								</div>
							</div>
							<div class="col-md-6 mt-md-5 mb-3">
								<div class="card">
									<div class="seo-fact sbg1">
										<div
											class="p-4 d-flex justify-content-between align-items-center">
											<div class="seofct-icon">
												<i class="ti-share"></i> 게시글수
											</div>
											<h2>45</h2><!-- 여기에 전체 게시글 수 카운트 추가~~ -->
										</div>
										<canvas id="seolinechart1" height="50"></canvas>
									</div>
								</div>
							</div>
							<div class="col-md-6 mt-5 mb-3">
								<div class="card">
									<div class="seo-fact sbg3">
										<div
											class="p-4 d-flex justify-content-between align-items-center">
											<div class="seofct-icon">
												<i class="ti-share"></i> 공지사항수
											</div>
											<h2>2</h2><!-- 여기에 공지사항 카운트 추가~~ -->
										</div>
										<canvas id="seolinechart1" height="50"></canvas>
									</div>
								</div>
							</div>
							<div class="col-md-6 mt-5 mb-3">
								<div class="card">
									<div class="seo-fact sbg55">
										<div
											class="p-4 d-flex justify-content-between align-items-center">
											<div class="seofct-icon">
												<i class="ti-share"></i> 나눔게시글 수 
											</div>
											<h2>29</h2><!-- 여기에 나눔게시글 카운트 추가~~ -->
										</div>
										<canvas id="seolinechart1" height="50"></canvas>
									</div>
								</div>
							</div>
							<div class="col-md-6 mt-md-5 mb-3">
								<div class="card">
									<div class="seo-fact sbg4">
										<div
											class="p-4 d-flex justify-content-between align-items-center">
											<div class="seofct-icon">
												<i class="ti-share"></i> 나영리 게시글 수 
											</div>
											<h2>2</h2><!-- 여기에 나영리 카운트 추가~~ -->
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
												<i class="ti-share"></i> 자유게시글 수
											</div>
											<h2>16</h2><!-- 여기에 자유게시글 카운트 추가~~ -->
										</div>
										<canvas id="seolinechart1" height="50"></canvas>
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
								<h4 class="header-title">게시판 별 글수 </h4>
								<canvas id="seolinechart8" height="500"></canvas>
							</div>
						</div>
					</div>
					<!-- Advertising area end -->


				</div>
			</div>
		</div>
		<!-- main content area end -->
		<%@ include file="footer.jsp"%>
