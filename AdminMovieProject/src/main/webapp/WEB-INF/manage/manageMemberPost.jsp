<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
/**
* @Class Name :  managePostGet.jsp
* @Description : 관리자 - 회원게시글 - 게시글 상세보기
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
<!-- page title area start -->
<div class="page-title-area">
	<div class="row align-items-center">
		<div class="col-sm-6">
			<div class="breadcrumbs-area clearfix">
				<h4 class="page-title pull-left">게시글 관리</h4>
				<ul class="breadcrumbs pull-left">
					<li><a href="/admin/">Home</a></li>
					<li><a href="/admin/manageMemberList">전체 회원</a></li>
					<!-- 이전페이지가 블랙리스트회원일경우 전체회원이 아닌 블랙리스트회원으로! 안되면 그냥 없애버려유 -->
					<li><a href="/admin/manageMemberInfo">회원정보 상세보기</a></li>
					<li><span>게시글 관리</span></li>
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
						<div class="post-tabs">
							<ul class="nav nav-tabs" id="myTab" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="board_free-tab" data-toggle="tab" href="#board_free"
									role="tab" aria-controls="board_free" aria-selected="true">자유게시판</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									id="board_share-tab" data-toggle="tab" href="#board_share"
									role="tab" aria-controls="board_share" aria-selected="false">나눔게시판</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" id="mml-tab" data-toggle="tab" href="#mml" role="tab" aria-controls="mml"
									aria-selected="false">나영리</a>
								</li>
							</ul>
						</div>
						
						<div class="tab-content mt-3" id="myTabContent">
						<div class="tab-pane fade show active" id="board_free"
							role="tabpanel" aria-labelledby="board_free-tab">
							<div class="single-table">
								<div class="table-responsive" style="overflow-y: scroll;">
									<table class="table table-striped text-center">
										<thead class="text-uppercase">
											<tr>
												<th style="width: 5%;"scope="col" style="width: 120px;">글번호</th>
												<th style="width: 10%;" scope="col">카테고리</th>
												<th style="width: 30%;" scope="col">글제목</th>
												<th style="width: 20%;"scope="col">글등록일</th>
												<th style="width: 5%;" scope="col">보기</th>
											</tr>
										</thead>
										<tbody>
											<!--4.  자유게시판 게시글의 나열 시작 -->
											<c:forEach items="${freeList}" var="board" varStatus="status">
												<tr class="post">
													<!--<td>${pageMaker.totalCount - ((pageMaker.criteria.page-1) * pageMaker.criteria.perPageNum + status.index) }</td> -->
													<td>${status.count}</td>
													<td>${board.bf_category}</td>
													<td><a href="boardFreeDetail?bf_bno=${board.bf_bno}">${board.bf_title}</a></td>
													<td><fmt:formatDate value="${board.bf_update_date}"
															pattern="yyyy-MM-dd" /></td>
													<td><i class="ti-search"
														onclick="location.href='boardFreeDetail?bf_bno=${board.bf_bno}'"></i></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="board_share" role="tabpanel"
							aria-labelledby="board_share-tab">
							<div class="single-table">
								<div class="table-responsive" style="overflow-y: scroll;">
									<table class="table table-striped text-center">
										<thead class="text-uppercase">
											<tr>
												<th style="width: 5%;"scope="col" style="width: 120px;">글번호</th>
												<th style="width: 10%;" scope="col">카테고리</th>
												<th style="width: 30%;" scope="col">글제목</th>
												<th style="width: 20%;"scope="col">글등록일</th>
												<th style="width: 5%;" scope="col">보기</th>
											</tr>
										</thead>
										<tbody>
											<!--4.  자유게시판 게시글의 나열 시작 -->
											<c:forEach items="${shareList}" var="board"
												varStatus="status">
												<tr class="post">
													<!--<td>${pageMaker.totalCount - ((pageMaker.criteria.page-1) * pageMaker.criteria.perPageNum + status.index) }</td> -->
													<td>${status.count}</td>
													<td>${board.bs_category}</td>
													<td><a
														href="boardShareDetail?bs_bno=${board.bs_bno}">${board.bs_title}</a></td>
													<td><fmt:formatDate value="${board.bs_update_date}"
															pattern="yyyy-MM-dd" /></td>
													<td><i class="ti-search"
														onclick="location.href='boardShareDetail?bs_bno=${board.bs_bno}'"></i></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!-- yj : start | pagination
							<nav aria-label="...">
								<ul class="pagination justify-content-center">
									<li class="page-item disabled"><a class="page-link"
										href="#" tabindex="-1">Previous</a></li>
									<li class="page-item active"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2
											<span class="sr-only">(current)</span>
									</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">Next</a>
									</li>
								</ul>
							</nav>
							 yj : end | pagination -->
						
							 
						</div>
						<div class="tab-pane fade" id="movie_review" role="tabpanel"
							aria-labelledby="movie_review-tab">
							<div class="single-table">
								<div class="table-responsive">
									<table class="table table-striped text-center">
										<thead class="text-uppercase">
											<tr>
												<th scope="col" style="width: 120px;">리뷰번호</th>
												<th scope="col">리뷰내용</th>
												<th scope="col">작성자</th>
												<th scope="col">리뷰등록일</th>
												<th scope="col">보기</th>
											</tr>
										</thead>
										<tbody>
											<%
												for (int i = 0; i < 10; i++) {
											%>
											<tr>
												<th scope="row"><%=i%></th>
												<td style="text-align: left;">리뷰 내용 입니당</td>
												<td>유디닝</td>
												<td>2019/07/14</td>
												<td><i class="ti-search"
													onclick="location.href='manageReviewGet.do'"></i></td>
											</tr>
											<%
												}
											%>
										</tbody>
									</table>
								</div>
							</div>
							<!-- yj : start | pagination-->
							<nav aria-label="...">
								<ul class="pagination justify-content-center">
									<li class="page-item disabled"><a class="page-link"
										href="#" tabindex="-1">Previous</a></li>
									<li class="page-item active"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2
											<span class="sr-only">(current)</span>
									</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">Next</a>
									</li>
								</ul>
							</nav>
							<!-- yj : end | pagination -->
						</div>
						<div class="tab-pane fade" id="cinema_review" role="tabpanel"
							aria-labelledby="cinema_review-tab">
							<div class="single-table">
								<div class="table-responsive">
									<table class="table table-striped text-center">
										<thead class="text-uppercase">
											<tr>
												<th scope="col" style="width: 120px;">리뷰번호</th>
												<th scope="col">리뷰내용</th>
												<th scope="col">작성자</th>
												<th scope="col">리뷰등록일</th>
												<th scope="col">보기</th>
											</tr>
										</thead>
										<tbody>
											<%
												for (int i = 0; i < 10; i++) {
											%>
											<tr>
												<th scope="row"><%=i%></th>
												<td style="text-align: left;">리뷰 내용 입니당</td>
												<td>유디닝</td>
												<td>2019/07/14</td>
												<td><i class="ti-search"
													onclick="location.href='manageReviewGet.do'"></i></td>
											</tr>
											<%
												}
											%>
										</tbody>
									</table>
								</div>
							</div>
							<!-- yj : start | pagination-->
							<nav aria-label="...">
								<ul class="pagination justify-content-center">
									<li class="page-item disabled"><a class="page-link"
										href="#" tabindex="-1">Previous</a></li>
									<li class="page-item active"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2
											<span class="sr-only">(current)</span>
									</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">Next</a>
									</li>
								</ul>
							</nav>
							<!-- yj : end | pagination -->
						</div>
						<div class="tab-pane fade" id="mml" role="tabpanel"
							aria-labelledby="mml-tab">
							<div class="single-table">
								<div class="table-responsive">
									<table class="table table-striped text-center">
										<thead class="text-uppercase">
											<tr>
												<th scope="col" style="width: 120px;">나영리 번호</th>
												<th scope="col">나영리 제목</th>
												<th scope="col">작성자</th>
												<th scope="col">나영리 등록일</th>
												<th scope="col">보기</th>
											</tr>
										</thead>
										<tbody>

											<!--4.  나영리 게시글의 나열 시작 -->
											<c:forEach items="${mml}" var="mml" varStatus="status">
												<tr class="post">
													<td>${pageMaker.totalCount - ((pageMaker.criteria.page-1) * pageMaker.criteria.perPageNum + status.index) }</td>
													<td><a href="">${mml.mml_title}</a></td>
													<td>${mml.id}</td>
													<td><fmt:formatDate value="${mml.mml_update_date}"
															pattern="yyyy-MM-dd" /></td>
													<td><i class="ti-search"
														onclick="location.href='managePostGet.do'"></i></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!-- yj : start | pagination-->
							<nav aria-label="...">
								<ul class="pagination justify-content-center">
									<li class="page-item disabled"><a class="page-link"
										href="#" tabindex="-1">Previous</a></li>
									<li class="page-item active"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2
											<span class="sr-only">(current)</span>
									</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">Next</a>
									</li>
								</ul>
							</nav>
							<!-- yj : end | pagination -->
						</div>
					</div>
					
					
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Dark table end -->
</div>
<!-- main content area end -->
<%@ include file="../footer.jsp"%>
