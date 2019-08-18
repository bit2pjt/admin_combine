<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
/**
* @Class Name :  adminNoticeList.jsp
* @Description : 관리자 - 공지사항 페이지
* @Modification Information
* @
* @  수정일      수정자              수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.17     박현민      최초생성
* @ 2019.07.25     박현민      쓰기 버튼추가
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
				<h4 class="page-title pull-left">공지사항</h4>
				<ul class="breadcrumbs pull-left">
					<li><a href="/admin/">Home</a></li>
					<li><span>공지사항</span></li>
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
					<!-- <div class="post-search-box drop-buttons row">
						<div class="dropdown col-md-2 col-sm-6">
							<button class="btn btn-rounded btn-light-purple dropdown-toggle"
								type="button" data-toggle="dropdown">검색조건</button>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								class="dropdown-item" href="#">이메일</a> <a class="dropdown-item"
									href="#">닉네임</a><a class="dropdown-item" href="#">등록일</a>
							</div>
						</div>
						<form action="#">
							<input class="post-search-box" type="text" name="search"
								placeholder="Search..." required> <i class="ti-search"></i>
						</form>
					</div> -->
					<!-- post-search-box end -->
					<button type="button" class="btn btn-dark mb-3" style="float: right;"
										onclick="location.href='noticeWrite'"> > 공지사항 작성하기</button>
					<div class="single-table">
						<div class="table-responsive">
							<table class="table table-striped text-center">
								<thead class="text-uppercase">
									<tr>
										<th scope="col" width="120px">공지 번호</th>
										<th scope="col">제목</th>
										<th scope="col">작성일</th>
										<th scope="col">수정일</th>
										<th scope="col">보기</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${noticeList}" var="noticeList"
										varStatus="status">
										<tr>
											<!-- <td>${pageMaker.totalCount - ((pageMaker.criteria.page-1) * pageMaker.criteria.perPageNum + status.index) }</td>
									 -->
											<td><c:out value="${noticeList.an_code }" /></td>
											<td><c:out value="${noticeList.an_title }" /></td>
											<td><c:out value="${noticeList.an_reg_date }" /></td>
											<td><c:out value="${noticeList.an_update_date }" /></td>
											<td><i class="ti-search" onclick="location.href='noticeDetail?an_code=${noticeList.an_code}'"></i></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<!-- yj : start | pagination-->
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
						</ul>
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
