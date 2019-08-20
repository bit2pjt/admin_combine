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
								<div class="modal fade" id="nodab" aria-hidden="true" style="display: none;">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h4 class="modal-title">답변을 입력해 주세요</h4>
												<button type="button" class="close" data-dismiss="modal">
													<span>×</span>
												</button>
											</div>
											<div class="modal-body">
											<div class="form-group">
					                            <label for="qnaNo" style="margin-bottom:10px;"><strong>문의 번호</strong></label>
					                            <input class="form-control" id="qnaNo" name="qnaNo" value="${boardQnaVO.qna_no }"readonly>
					                        </div>
					                        <label for="qnaText" style="margin-bottom:10px;"><strong>답변 내용</strong></label>
												<textarea class="form-control" id="qnaText" name="qnaText" rows="3"></textarea>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
												<button type="button" class="btn btn-success btn-register"> 등록 </button>
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
								답변번호: &nbsp;${adQnaVO.aqna_no }
								<p>답변내용:&nbsp; ${adQnaVO.aqna_content }</p>
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
											<div class="form-group">
					                            <label for="aqnaNo" style="margin-bottom:10px;"><strong>답변 번호</strong></label>
					                            <input class="form-control" id="aqnaNo" name="aqnaNo" value="${adQnaVO.aqna_no }"readonly>
					                        </div>
											 <label for="updateText" style="margin-bottom:10px;"><strong>답변 내용</strong></label>
												<textarea class="form-control" id="updateText" name="updateText" rows="3">${adQnaVO.aqna_content }</textarea>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal"> 취소 </button>
												<button type="button" id="btn-update" class="btn btn-success btn-update"> 수정 </button>
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
<script>
$(".btn-register").on("click", function () {
    var qna_no = $("#qnaNo").val();
    var aqna_content = $("#qnaText").val();
    
    $.ajax({
        url : "insertAnswer",
        type : "get",
        data: {qna_no:qna_no, aqna_content: aqna_content},
        dataType : "text",
        success : function (result) {
        		alert(result);
        	 alert("답변 등록 완료!");
        	 $("#nodab").removeClass("show");
             $(".modal-backdrop").remove();
             $("body").removeClass("modal-open");
             location.href="qnaDetail?qna_no=" + result;
        	 
        }
    });
});

$(".btn-update").on("click", function () { // 댓글의 수정 버튼 클릭시
	var qna_no = "${adQnaVO.qna_no }";
	var aqna_no = $("#aqnaNo").val();
	var aqna_content = $("#updateText").val();
	
	$.ajax({
		url : "updateAnswer",
		type : "get",
		data: {qna_no: qna_no, aqna_no:aqna_no, aqna_content: aqna_content},
		dataType : "text",
		success : function (result) {
			alert(result);
			alert("답변 수정 완료!");
			$("#nodab").removeClass("show");
			$(".modal-backdrop").remove();
			$("body").removeClass("modal-open");
		            //opener.document.location.reload();
			 location.href="qnaDetail?qna_no=" + result;
	        	 
		}
	});
});
</script>
<!-- main content area end -->
<%@ include file="../footer.jsp"%>