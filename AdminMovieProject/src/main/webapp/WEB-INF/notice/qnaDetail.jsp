<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
/**
* @Class Name :  adminQnaGet.jsp
* @Description : 관리자 - qna 상세보기
* @Modification Information
* @
* @  수정일      수정자              수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.25     박현민      최초생성
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
		<!-- 사용자 문의  -->
		<div class="col-lg-12 mt-5">
			<div class="card2">
				<div class="card-body2">
					<div class="card-body">

						<p>아이디 : ${boardQnaVO.id }</p>
						<h4 class="header-title">[${boardQnaVO.qna_category }]${boardQnaVO.qna_title }</h4>

						<h6>${boardQnaVO.qna_content }</h6>
						<br>
						<div style="text-align: right">
							<p>작성일 : ${boardQnaVO.qna_date } / 수정일 :
								${boardQnaVO.qna_update_date }</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 사용자 문의 끝  -->



		<!-- 관리자 답변 -->
		<div class="col-lg-12 mt-5">
			<div class="card2">
				<div class="card-body2">
					<c:choose>
						<c:when test="${boardQnaVO.qna_answer == 'N'}">
							<!-- 답변 없을때 -->
							<div class="card-body">
								<h4 class="header-title">답변이 없습니다</h4>

								<!-- Button trigger modal -->
								<button type="button"
									class="btn btn-primary btn-flat btn-lg mt-3"
									data-toggle="modal" data-target="#nodab">답변하기</button>
								<!-- Modal -->
								<div class="modal fade" id="nodab" aria-hidden="true"
									style="display: none;">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title">답변을 입력해 주세요</h5>
												<button type="button" class="close" data-dismiss="modal">
													<span>×</span>
												</button>
											</div>
											<div class="modal-body">
												<textarea class="form-control" rows="3"></textarea>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Close</button>
												<button type="button" class="btn btn-primary">Save
													changes</button>
											</div>
										</div>
									</div>
								</div>

							</div>
							<!-- 답변 없을때 끝 -->

						</c:when>
						<c:otherwise>
							<!-- 답변 있을때 -->
							<div class="card-body">
								${adQnaVO.qna_no }
								<p>${adQnaVO.aqna_content }</p>
								<h6>${adQnaVO.aqna_update_date }</h6>
								<!-- Button trigger modal -->
								<button type="button"
									class="btn btn-primary btn-flat btn-lg mt-3"
									data-toggle="modal" data-target="#exampleModalCenter">수정하기</button>
								<!-- Modal -->
								<div class="modal fade" id="exampleModalCenter"
									aria-hidden="true" style="display: none;">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title">답변 수정</h5>
												<button type="button" class="close" data-dismiss="modal">
													<span>×</span>
												</button>
											</div>
											<div class="modal-body">
												<textarea class="form-control" rows="3"></textarea>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Close</button>
												<button type="button" class="btn btn-primary">Save
													changes</button>
											</div>
										</div>
									</div>
								</div>

							</div>
							<!-- 답변 있을때 끝 -->
						</c:otherwise>
					</c:choose>

				</div>
			</div>
		</div>
		<!-- 관리자 답변 끝 -->
	</div>
</div>

<!-- main content area end -->
<%@ include file="../footer.jsp"%>