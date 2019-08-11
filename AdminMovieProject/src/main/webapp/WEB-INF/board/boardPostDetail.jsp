<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<h4 class="page-title pull-left">회원 게시글 상세보기</h4>
				<ul class="breadcrumbs pull-left">
					<li><a href="/admin/">Home</a></li>
					<li><a href="/admin/manageMemberPost.do">회원 게시글</a></li>
					<li><span>회원정보 상세보기</span></li>
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
							<li>
								<div class="ct" style="width: 50%;">
									<strong>작성자 : </strong> <span>비트인</span>
								</div>
								<div class="ct">
									<strong>추천:</strong> <span> 100 </span>
								</div>
							</li>
							<li>
								<div class="ct" style="width: 50%;">
									<strong>작성일 :</strong> <span>2019/07/08</span>
								</div>
								<div class="ct">
									<strong>비추천:</strong> <span> 100 </span>
								</div>
							</li>
							<li><strong>글제목 : </strong> <span>집에 가고 싶어요.</span></li>
							<li>
								<div class="abc">
									<textarea cols="10" rows="10" readonly>
                                                게시글 상세보기 하단에 댓글도 보여줘야하지않을까잉...?</textarea>
								</div>
								<div class="btns">
									<button type="button" class="btn btn-dark mb-3"
										onclick="location.href='manageMemberPost.do'">게시글삭제</button>
									<br>
									<button type="button" class="btn btn-dark mb-3"
										onclick="location.href='manageMemberPost.do'">삭제 및
										블랙리스트 추가</button>
									<br>
									<button type="button" class="btn btn-dark mb-3"
										onclick="location.href='manageMemberPost.do'">목록으로
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
