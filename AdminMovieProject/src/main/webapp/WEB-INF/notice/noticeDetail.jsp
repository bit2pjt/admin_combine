<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
/**
* @Class Name :  adminNoticeGet.jsp
* @Description : 관리자 - 공지사항 - 공지사항 상세보기
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
				<h4 class="page-title pull-left">공지사항 상세보기</h4>
				<ul class="breadcrumbs pull-left">
					<li><a href="/admin/">Home</a></li>
					<li><a href="/admin/adminNoticeList.do">공지사항</a></li>
					<li><span>공지사항 상세보기</span></li>
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
						<ul>
						<li><strong>글제목 : </strong> <span>${adNoticeVO.an_title}</span></li>
							
							<li>
								<div class="ct" style="width: 20%;">
									<strong>글번호 : </strong> <span>${adNoticeVO.an_code}</span>
								</div>
						
								<div class="ct" style="width: 25%;">
									<strong>작성일 :</strong> <span>${adNoticeVO.an_reg_date}</span>
								</div>
								<div class="ct">
									<strong>수정일:</strong> <span>${adNoticeVO.an_update_date}</span>
								</div>
							</li>
							
							<li>
								<div class="abc">
									<code>${adNoticeVO.an_content}</code>
								</div>
								<div class="btns">
									<button type="button" class="btn btn-dark mb-3"
										onclick="location.href='adminNoticeUpdate.do'">게시글수정</button>
									<br>
									<button type="button" class="btn btn-dark mb-3">게시글삭제</button> <!-- 삭제기능 넣어야함 -->
									<br>
									<button type="button" class="btn btn-dark mb-3"
										onclick="location.href='noticeList'">목록으로
										돌아가기</button>
									<br>
								</div>
							</li>
						</ul>
					</div>

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
