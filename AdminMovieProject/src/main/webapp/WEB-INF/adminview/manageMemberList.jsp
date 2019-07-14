<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
/**
* @Class Name :  manageMemberList.jsp
* @Description : 관리자 - 전체회원 관리 페이지
* @Modification Information
* @
* @  수정일      수정자              수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.13     한유진      최초생성
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
				<h4 class="page-title pull-left">전체 회원</h4>
				<ul class="breadcrumbs pull-left">
					<li><a href="/admin/">Home</a></li>
					<li><span>전체 회원</span></li>
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
								<a class="dropdown-item" href="#">회원번호</a> <a
									class="dropdown-item" href="#">이메일</a> <a class="dropdown-item"
									href="#">닉네임</a>
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
										<th scope="col">회원번호</th>
										<th scope="col" width=>이메일</th>
										<th scope="col">닉네임</th>
										<th scope="col">회원가입일</th>
										<th scope="col">보기</th>
									</tr>
								</thead>
								<tbody>
									<%
										for (int i = 0; i < 10; i++) {
									%>
									<tr>
										<th scope="row"><%=i + 1%></th>
										<td>bit0hyjbit0hyj@gmail.com</td>
										<td>유우진</td>
										<td>2019/07/13</td>
										<td><i class="ti-search"
											onclick="location.href='manageMemberInfo.do'"></i></td>
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
							<li class="page-item disabled"><a class="page-link" href="#"
								tabindex="-1">Previous</a></li>
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2 <span
									class="sr-only">(current)</span></a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a>
							</li>
						</ul>
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
