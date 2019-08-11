<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
/**
* @Class Name :  manageMmlGet.jsp
* @Description : 관리자 - 회원게시글 - 리뷰 상세보기
* @Modification Information
* @
* @  수정일      수정자              수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.14     한유진      최초생성
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
<head>
<link rel="stylesheet" href="resources/css/modifystyles_sp.css">
</head>
<!-- page title area start -->
<div class="page-title-area">
	<div class="row align-items-center">
		<div class="col-sm-6">
			<div class="breadcrumbs-area clearfix">
				<h4 class="page-title pull-left">회원 나영리 상세보기</h4>
				<ul class="breadcrumbs pull-left">
					<li><a href="/admin/">Home</a></li>
					<li><a href="/admin/manageMemberPost.do">회원 게시글</a></li>
					<li><span>회원 나영리 상세보기</span></li>
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
					<div class="buster-light">
						<!-- blog detail section-->
						<div class="page-single">
							<div class="container">
								<div class="row">
									<div class="col-md-9 col-sm-12 col-xs-12">
										<div class="blog-detail-ct">
											<h1>제목 : 나영리 제목</h1>
											<br>
											<h4>작성자 : nickname</h4>
											<br>
											<h4>작성일 : 2019.07.04</h4>
											<br>
											<textarea style="width:100%;">나영리내용</textarea>
											<!-- share link -->
											<a href="movieInfo.html"> <img
												src="resources/images/notebook.jpg" alt="" width="185"
												height="284"></a> <a href="movieInfo.html"> <img
												src="resources/images/titanic.jpeg" alt="" width="185"
												height="284"></a>
											<div class="flex-it share-tag"
												style="width: 1258px; float: left;"></div>
										</div>
									</div>
									<div class="col-md-3 col-sm-12 col-xs-12">
										<div class="sidebar">

														<button type="button" class="btn btn-dark mb-3"
										onclick="location.href='manageMemberPost.do'">삭제</button>
									<br>
									<button type="button" class="btn btn-dark mb-3"
										onclick="location.href='manageMemberPost.do'">삭제 및 블랙리스트추가</button>
									<br>
									<button type="button" class="btn btn-dark mb-3"
										onclick="location.href='manageMemberPost.do'">목록으로 돌아가기</button>
													</center>
											</div>

										</div>
									</div>
								</div>

							</div>

						</div>
						<!-- end of  blog detail section-->
					</div>
				</div>
			</div>
		</div>
		<!-- Dark table end -->
	</div>
</div>
<!-- Contextual Classes end -->
</div>
</div>
</div>
<!-- main content area end -->
<%@ include file="../footer.jsp"%>
