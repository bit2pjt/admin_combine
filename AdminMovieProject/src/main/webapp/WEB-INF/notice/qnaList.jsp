<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
/**
* @Class Name :  adminQnaList.jsp
* @Description : 관리자 - qna 페이지
* @Modification Information
* @
* @  수정일      수정자              수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.17     박현민      최초생성
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
				<h4 class="page-title pull-left">QnA관리 게시판</h4>
				<ul class="breadcrumbs pull-left">
					<li><a href="/admin/">Home</a></li>
					<li><span>QnA관리</span></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- page title area end -->
<div class="main-content-inner">
	<div class="row">
		<!-- yj : start | memberList-->
		<!-- Striped table start -->
		<div class="col-lg-12 mt-5">
			<div class="card2">
				<div class="card-body2">
					<!-- post-search-box start -->
					<div class="post-search-box drop-buttons row">
						<div class="dropdown col-md-2 col-sm-6">
							<button class="btn btn-rounded btn-light-purple dropdown-toggle"
								type="button" data-toggle="dropdown">검색조건</button>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<a class="dropdown-item" href="#">카테고리1</a> <a
									class="dropdown-item" href="#">카테고리2</a><a
									class="dropdown-item" href="#">카테고리3</a>
							</div>
						</div>
						<form action="#">
							<input class="post-search-box" type="text" name="search"
								placeholder="Search..." required> <i class="ti-search"></i>
						</form>
					</div>
					<!-- post-search-box end -->
					<div class="single-table">
						<div class="table-responsive">
							<table class="table table-striped text-center">
								<thead class="text-uppercase">
									<tr>
										<th scope="col" width="120px">문의 번호</th>
										<th scope="col">카테고리</th>
										<th scope="col">제목</th>
										<th scope="col">글쓴이</th>
										<th scope="col">작성일</th>
											<th scope="col">답변여부</th>
										<th scope="col">보기</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${qnaList}" var="qnaList"
										varStatus="status">
										<tr>
											<!-- <td>${pageMaker.totalCount - ((pageMaker.criteria.page-1) * pageMaker.criteria.perPageNum + status.index) }</td>
									 -->
											<td><c:out value="${qnaList.qna_no }" /></td>
											<td><c:out value="${qnaList.qna_category }" /></td>
											<td><c:out value="${qnaList.qna_title }" /></td>
											<td><c:out value="${qnaList.nickname }" /></td>
											<td><c:out value="${qnaList.qna_update_date }" /></td>
											<td><c:out value="${qnaList.qna_answer }" /></td>
											<td><i class="ti-search" onclick="location.href='qnaDetail?qna_no=${qnaList.qna_no}'"></i></td>
										</tr>

									</c:forEach>
									

								</tbody>
							</table>
						</div>
					</div>
					<!-- yj : start | pagination
					<nav aria-label="...">
						<ul class="pagination justify-content-center">
							<li class="page-item disabled"><a class="page-link" href="#"
								tabindex="-1">Previous</a></li>
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2 <span
									class="sr-only">(current)</span></a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a>
							</li>
						</ul>-->
						<!-- <ul class="pagination">
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
							</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
									class="sr-only">Next</span>
							</a></li>
						</ul> -->
					</nav>
					<!-- yj : end | pagination -->
				</div>
			</div>
		</div>
		<!-- Striped table end -->

	</div>
</div>
</div>
<!-- main content area end -->
<%@ include file="../footer.jsp"%>
