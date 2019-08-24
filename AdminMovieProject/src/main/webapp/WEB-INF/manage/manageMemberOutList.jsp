<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
/**
* @Class Name :  manageMemberList.jsp
* @Description : 관리자 - 전체회원 관리 페이지
* @Modification Information
* @
* @  수정일      수정자              수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.13     한유진      최초생성
* @ 2019.08.04
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
				<h4 class="page-title pull-left">탈퇴 신청 회원</h4>
				<ul class="breadcrumbs pull-left">
					<li><a href="/admin/">Home</a></li>
					<li><span>탈퇴 신청 회원</span></li>
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
					post-search-box end -->
					
					<!-- 메인 테이블 시작 -->
					<div class="single-table">
						<div class="table-responsive">
							<table class="table table-striped text-center">
								<thead class="text-uppercase">
									<tr>
										<th scope="col">회원번호</th>
										<th scope="col" width=>이메일</th>
										<th scope="col">탈퇴신청일</th>
										<th scope="col">삭제예정일</th>
										<th scope="col">삭제</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${deletelist}" var="deletelist" varStatus="status">
									<tr>
									<!-- <td>${pageMaker.totalCount - ((pageMaker.criteria.page-1) * pageMaker.criteria.perPageNum + status.index) }</td>
									 -->
									 
									 <td><c:out value="${deletelist.id }" /></td>
									 <td><c:out value="${deletelist.m_email }" /></td>
									 <!-- <td><c:out value="${blacklist.m_nickname }" /></td> -->
									 <td><c:out value="${deletelist.delete_date }" /></td>
									 <td><c:out value="${deletelist.remove_date }" /></td>
									 <td> 
										 <a href="#" onclick="deleteMember()">삭제</a>
									 </td>
									</tr>
									<input type="hidden" id="deleteId" value="${deletelist.id }"/>
								
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
						</ul>
					</nav>-->
					<!-- yj : end | pagination -->
				</div>
			</div>
		</div>
		<!-- Striped table end -->

	</div>
</div>
<script>
	function deleteMember() {
		var id = $("#deleteId").val();
		var blacklistyn = confirm("삭제 하시겠습니까?");
		
		if(blacklistyn == true)
			location.href="deleteMemberAdmin?id=" + id;
		else
			return false;		
		
	}
</script>
<!-- main content area end -->
<%@ include file="../footer.jsp"%>
