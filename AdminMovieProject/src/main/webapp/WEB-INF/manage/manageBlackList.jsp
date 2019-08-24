<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
/**
* @Class Name :  manageBlackList.jsp
* @Description : 관리자 - 블랙리스트 관리 페이지
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
				<h4 class="page-title pull-left">블랙리스트 회원</h4>
				<ul class="breadcrumbs pull-left">
					<li><a href="/admin/">Home</a></li>
					<li><span>블랙리스트 회원</span></li>
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
				<!-- 서치 -->
					<!-- <div class="col-sm-8 mb-3">
						<div style="display: inline-flex; ">
						
							<select class="form-control col-sm-4 mb-3" name="searchType" id="searchType" style="margin-right: 10px;">
								<option value="null"
									<c:out value="${searchCriteria.searchType == null ? 'selected' : ''}"/>>::::::
									선택 ::::::</option>
								<option value="i"
									<c:out value="${searchCriteria.searchType eq 'i' ? 'selected' : ''}"/>>회원번호</option>
								<option value="e"
									<c:out value="${searchCriteria.searchType eq 'e' ? 'selected' : ''}"/>>이메일</option>
								<option value="n"
									<c:out value="${searchCriteria.searchType eq 'n' ? 'selected' : ''}"/>>닉네임</option>
							</select>
								<input type="text" class="form-control col-sm-8 mb-3" name="keyword"
									id="keywordInput" value="${searchCriteria.keyword}"
									placeholder="검색어" style="margin-right: 5px;">

								<button type="button" class="btn btn-dark mb-3" id="btn-hjs">
									검색</button>
						</div>
					</div>
					- 서치 끝 -->
				
					<div class="single-table">
						<div class="table-responsive">
							<table class="table table-striped text-center">
								<thead class="text-uppercase">
									<tr>
										<th scope="col" width="120px">회원번호</th>
										<th scope="col">이메일</th>
										<th scope="col">닉네임</th>
										<th scope="col">블랙리스트 등록일</th>
										<th scope="col">삭제</th>
									</tr>
								</thead>
								<tbody>
								
								
								<c:forEach items="${blacklist}" var="blacklist" varStatus="status">
									<tr>
									<td><c:out value="${blacklist.id }" /></td>							 
									<!-- <td><c:out value="${blacklist.id }" /></td>  --> 
									 <td><c:out value="${blacklist.m_email }" /></td>
									 <td><c:out value="${blacklist.m_nickname }" /></td>
										<td>${blacklist.black_date }</td>
									<td> 
										<a href="#" onclick="deleteBlackList()">삭제</a>
									</td>
									</tr>
									<input type="hidden" id="blackId" value="${blacklist.id }"/>
								</c:forEach>
									
								</tbody>
							</table>
						</div>
					</div>
					<!--페이지메이커 시작-->
					<!--<div class="box-footer">
						<div class="pagination justify-content-center">
							<form id="listPageForm">
								<input type="hidden" name="page"
									value="${pageMaker.criteria.page}"> <input
									type="hidden" name="perPageNum"
									value="${pageMaker.criteria.perPageNum}">
							</form>
							<ul class="pagination">
								<c:if test="${pageMaker.prev}">
									<li><a class="page-link" href="${pageMaker.startPage - 1}">이전</a></li>
								</c:if>
								<c:forEach begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}" var="idx">
									<li class="page-link"
										<c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>>
										<a class="page-item active" href="${idx}">${idx}</a>
									</li>
								</c:forEach>
								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li class="page-item"><a class="page-link"
										href="${pageMaker.endPage + 1}">다음</a></li>
								</c:if>
							</ul>
						</div>
					</div>
					페이지메이커 끝-->
				</div>
			</div>
		</div>
		<!-- Striped table end -->

	</div>
</div>
<!-- main content area end -->
<!-- 스크립트 추가 -->
<script>
	function deleteBlackList() {
		var id = $("#blackId").val();
		var blacklistyn = confirm("삭제 하시겠습니까?");
		
		if(blacklistyn == true)
			location.href="deleteBlackList?id=" + id;
		else
			return false;		
		
	}
	
	$(".pagination li a").on("click", function(event) {
		event.preventDefault();

		var targetPage = $(this).attr("href");
		var listPageForm = $("#listPageForm");
		listPageForm.find("[name='page']").val(targetPage);
		listPageForm.attr("action", "manageBlackList").attr("method", "get"); // 변경
		listPageForm.submit();
	});

	$("#btn-hjs").on(
			"click",
			function(event) {
				self.location = "manageBlackList${pageMaker.makeQuery(1)}" //변경
						+ "&searchType=" + $("select option:selected").val()
						+ "&keyword="
						+ encodeURIComponent($("#keywordInput").val());
			});
</script>
<!-- 스크립트 추가 끝 -->
<%@ include file="../footer.jsp"%>
