<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
/**
* @Class Name :  manageSpamPost.jsp
* @Description : 관리자 - 회원 신고 게시글 페이지
* @Modification Information
* @
* @  수정일      수정자              수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.08.03     박현민      최초생성
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
				<h4 class="page-title pull-left">신고게시글</h4>
				<ul class="breadcrumbs pull-left">
					<li><a href="index.html">Home</a></li>
					<li><span>신고게시글</span></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- page title area end -->
<div class="main-content-inner">
	<div class="row">
		<!-- yj : start | memberPost-->
		<div class="col-lg-12 mt-2">
			<div class="card">
				<!-- nav tab start -->
				<div class="card-body">
					
					<br>
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
				<!-- 			<li class="nav-item"><a class="nav-link"
								id="movie_review-tab" data-toggle="tab" href="#movie_review"
								role="tab" aria-controls="movie_review" aria-selected="false">영화리뷰</a>
							</li>
							<li class="nav-item"><a class="nav-link"
								id="cinema_review-tab" data-toggle="tab" href="#cinema_review"
								role="tab" aria-controls="cinema_review" aria-selected="false">영화관
									리뷰</a></li>  -->
							<li class="nav-item"><a class="nav-link" id="mml-tab"
								data-toggle="tab" href="#mml" role="tab" aria-controls="mml"
								aria-selected="false">나영리</a></li>
						</ul>
					</div>
					<div class="tab-content mt-3" id="myTabContent">
						<div class="tab-pane fade show active" id="board_free"
							role="tabpanel" aria-labelledby="board_free-tab">
							<div class="single-table">
								<div class="table-responsive">
									<table class="table table-striped text-center">
										<thead class="text-uppercase">
											<tr>
												<th scope="col" style="width:120px;">글번호</th>
												<th scope="col">글제목</th>
												<th scope="col">작성자</th>
												<th scope="col">글등록일</th>
												<th scope="col">삭제</th>
											</tr>
										</thead>
										<tbody>
										<!--4.  자유게시판 게시글의 나열 시작 -->
											<c:forEach items="${boardFree}" var="board" varStatus="status">
												<tr class="post">
													<!--<td>${pageMaker.totalCount - ((pageMaker.criteria.page-1) * pageMaker.criteria.perPageNum + status.index) }</td> -->
													<td>${board.bf_bno}</td>
													<td><a href="boardFreeDetail?bf_bno=${board.bf_bno}">${board.bf_title}</a></td>
													<td>${board.nickname}</td>
													<td><fmt:formatDate value="${board.bf_update_date}"
															pattern="yyyy-MM-dd" /></td>
													<td> 
														 <a href="#" onclick="deleteSpamFBoard()">삭제</a>
													 </td>
												</tr>
													<input type="hidden" id="deleteFId" value="${board.bf_bno }"/>
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
							<!-- yj : end | pagination -->
						</div>
						<div class="tab-pane fade" id="board_share" role="tabpanel"
							aria-labelledby="board_share-tab">
							<div class="single-table">
								<div class="table-responsive">
									<table class="table table-striped text-center">
										<thead class="text-uppercase">
											<tr>
												<th scope="col" style="width:120px;">글번호</th>
												<th scope="col">글제목</th>
												<th scope="col">작성자</th>
												<th scope="col">글등록일</th>
												<th scope="col">보기</th>
											</tr>
										</thead>
										<tbody>
										<!--4.  자유게시판 게시글의 나열 시작 -->
											<c:forEach items="${boardShare}" var="board"
												varStatus="status">
												<tr class="post">
													<!--<td>${pageMaker.totalCount - ((pageMaker.criteria.page-1) * pageMaker.criteria.perPageNum + status.index) }</td> -->
													<td>${board.bs_bno}</td>
													<td><a
														href="boardShareDetail?bs_bno=${board.bs_bno}">${board.bs_title}</a></td>
													<td>${board.nickname}</td>
													<td><fmt:formatDate value="${board.bs_update_date}"
															pattern="yyyy-MM-dd" /></td>
													<td> 
														 <a href="#" onclick="deleteSpamSBoard()">삭제</a>
													 </td>
												</tr>
												<input type="hidden" id="deleteSId" value="${board.bs_bno }"/>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
								<!-- yj : start | pagination-->
							<!-- 	<nav aria-label="...">
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
								</nav>  -->
								<!-- yj : end | pagination -->
						</div>
						<div class="tab-pane fade" id="movie_review" role="tabpanel"
							aria-labelledby="movie_review-tab">
							<div class="single-table">
								<div class="table-responsive">
									<table class="table table-striped text-center">
										<thead class="text-uppercase">
											<tr>
												<th scope="col" style="width:120px;">리뷰번호</th>
												<th scope="col">리뷰내용</th>
												<th scope="col">작성자</th>
												<th scope="col">리뷰등록일</th>
												<th scope="col">보기</th>
											</tr>
										</thead>
										<tbody>
										<%
											for(int i=0; i<10; i++){
										%>
											<tr>
												<th scope="row"><%= i %></th>
												<td style="text-align:left;">리뷰 내용 입니당</td>
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
												<th scope="col" style="width:120px;">리뷰번호</th>
												<th scope="col">리뷰내용</th>
												<th scope="col">작성자</th>
												<th scope="col">리뷰등록일</th>
												<th scope="col">보기</th>
											</tr>
										</thead>
										<tbody>
										<%
											for(int i=0; i<10; i++){
										%>
											<tr>
												<th scope="row"><%= i %></th>
												<td style="text-align:left;">리뷰 내용 입니당</td>
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
												<th scope="col" style="width:120px;">나영리 번호</th>
												<th scope="col">나영리 제목</th>
												<th scope="col">작성자</th>
												<th scope="col">나영리 등록일</th>
												<th scope="col">보기</th>
											</tr>
										</thead>
										<tbody>
										
										</tbody>
									</table>
								</div>
							</div>
							<!-- yj : start | pagination-->
				<!-- 			<nav aria-label="...">
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
							</nav>-->
							<!-- yj : end | pagination -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- nav tab end -->
	</div>
</div>

<script>
	function deleteSpamFBoard() {
		var bno = $("#deleteFId").val();
		var deleteyn = confirm("삭제 하시겠습니까?");
		
		if(deleteyn == true)
			location.href="deleteSpamFBoard?bno=" + bno;
		else
			return false;		
		
	}
	
	function deleteSpamSBoard() {
		var bno = $("#deleteSId").val();
		var deleteyn = confirm("삭제 하시겠습니까?");
		
		if(deleteyn == true)
			location.href="deleteSpamSBoard?bno=" + bno;
		else
			return false;		
		
	}
</script>
<!-- main content area end -->
<%@ include file="../footer.jsp"%>
