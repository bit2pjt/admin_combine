<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!--
/**
* @Class Name :  manageMemberModify.jsp
* @Description : 관리자 - 회원정보 수정 페이지
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
				<h4 class="page-title pull-left">회원정보 상세보기</h4>
				<ul class="breadcrumbs pull-left">
					<li><a href="/admin/">Home</a></li>
					<li><a href="/admin/manageMemberList.do">전체 회원</a></li>
					<li><a href="/admin/manageMemberInfo.do">회원정보 상세보기</a></li>
					<li><span>회원정보 수정</span></li>
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
			<div class="card">
				<form action="manageMemberModifyAction" method="post"
					onsubmit="return check()">
					<div class="card-memberinfo">
						<!--화면 3분할-->
						<div class="info-left" style="display: block">
							<c:choose>
								<c:when test="${memberVO.m_image == null}">
									<img src="resources/images/person.png" width="150px"
										height="150px">
								</c:when>
								<c:otherwise>
									<img src="${memberVO.m_image }" width="150px" height="150px">
								</c:otherwise>
							</c:choose>

							<button type="button" class="btn btn-dark mb-3"
								onclick="location.href=''">회원 이미지 변경</button>

						</div>
						<div class="info-mid">
							<table class="info-mid-table">
								<tr>
									<td>회원번호&ensp;&ensp;:&ensp;&ensp;</td>
									<td><span>${memberVO.id}</span></td>
								</tr>
								<tr>
									<td>이름&ensp;&ensp;:&ensp;&ensp;</td>
									<td><span><input type="text" id="m_name"
											value="${memberVO.m_name}"></span></td>
								</tr>
								<tr>
									<td>닉네임&ensp;&ensp;:&ensp;&ensp;</td>
									<td><input type="text" id="m_nickname"
										value="${memberVO.m_nickname}"></td>
								</tr>
								<tr>
									<td>이메일&ensp;&ensp;:&ensp;&ensp;</td>
									<td><span>${memberVO.m_email}</span></td>
								</tr>
								<tr>
									<td>이메일 인증여부&ensp;&ensp;:&ensp;&ensp;</td>
									<c:choose>
										<c:when test="${memberVO.m_cert eq 'Y'}">
											<td><input type="radio" name="m_cert" value="Y" checked><span>&nbsp;yes</span>&ensp;&ensp;
												<input type="radio" name="m_cert" value="N"><span>&nbsp;no</span>
											</td>
										</c:when>
										<c:otherwise>
											<td><input type="radio" name="m_cert" value="Y"><span>&nbsp;yes</span>&ensp;&ensp;
												<input type="radio" name="m_cert" value="N" checked><span>&nbsp;no</span>
											</td>
										</c:otherwise>
									</c:choose>

								</tr>
								<tr>
									<td>이메일 수신동의&ensp;&ensp;:&ensp;&ensp;</td>
									<c:choose>
										<c:when test="${memberVO.m_eagree eq 'Y'}">
											<td><input type="radio" name="m_eagree" value="Y"
												checked><span>&nbsp;yes</span>&ensp;&ensp; <input
												type="radio" name="m_eagree" value="N"><span>&nbsp;no</span>
											</td>
										</c:when>
										<c:otherwise>
											<td><input type="radio" name="m_eagree" value="Y"><span>&nbsp;yes</span>&ensp;&ensp;
												<input type="radio" name="m_eagree" value="N" checked><span>&nbsp;no</span>
											</td>
										</c:otherwise>
									</c:choose>
								</tr>
								<tr>
									<td>전화번호&ensp;&ensp;:&ensp;&ensp;</td>
									<td><c:set var="phone"
											value="${fn:split(memberVO.m_phone,'-')}" /> <input
										name="m_phone" id="m_phone" type="hidden"
										value=“${memberVO.m_phone}” /> <input class="phone"
										id="phone1" type="number" required="required"
										value="${phone[0] }" maxlength="3"
										oninput="numberMaxLength(this);" />&nbsp;-&nbsp; <input
										class="phone" id="phone2" type="number" required="required"
										value="${phone[1] }" maxlength="4"
										oninput="numberMaxLength(this);" />&nbsp;-&nbsp; <input
										class="phone" id="phone3" type="number" required="required"
										value="${phone[2] }" maxlength="4"
										oninput="numberMaxLength(this);" /></td>
								</tr>

								<tr>
									<td>SMS 수신동의&ensp;&ensp;:&ensp;&ensp;</td>
									<c:choose>
										<c:when test="${memberVO.m_sagree eq 'Y'}">
											<td><input type="radio" name="m_sagree" value="Y"
												checked><span>&nbsp;yes</span>&ensp;&ensp; <input
												type="radio" name="m_sagree" value="N"><span>&nbsp;no</span>
											</td>
										</c:when>
										<c:otherwise>
											<td><input type="radio" name="m_sagree" value="Y"><span>&nbsp;yes</span>&ensp;&ensp;
												<input type="radio" name="m_sagree" value="N" checked><span>&nbsp;no</span>
											</td>
										</c:otherwise>
									</c:choose>
								</tr>
								<tr>
									<td>회원가입일&ensp;&ensp;:&ensp;&ensp;</td>
									<td><span>${memberVO.m_regdate}</span></td>
								</tr>
								<tr>
									<td>회원정보수정일&ensp;&ensp;:&ensp;&ensp;</td>
									<td><span>${memberVO.m_update_date}</span></td>
								</tr>
								<tr>
									<td>탈퇴여부&ensp;&ensp;:&ensp;&ensp;</td>
									<c:choose>
										<c:when test="${memberVO.m_deleteyn eq 'Y'}">
											<td><input type="radio" name="m_deleteyn" value="Y"
												checked><span>&nbsp;yes</span>&ensp;&ensp; <input
												type="radio" name="m_deleteyn" value="N"><span>&nbsp;no</span>
											</td>
										</c:when>
										<c:otherwise>
											<td><input type="radio" name="m_deleteyn" value="Y"><span>&nbsp;yes</span>&ensp;&ensp;
												<input type="radio" name="m_deleteyn" value="N" checked><span>&nbsp;no</span>
											</td>
										</c:otherwise>
									</c:choose>
								</tr>
								<tr>
									<td>팔로잉수&ensp;&ensp;:&ensp;&ensp;</td>
									<td><span>${memberVO.m_following}</span></td>
								</tr>
								<tr>
									<td>팔로워수&ensp;&ensp;:&ensp;&ensp;</td>
									<td><span>${memberVO.m_follower}</span></td>
								</tr>
								<tr>
									<td>엠블럼 등급&ensp;&ensp;:&ensp;&ensp;</td>
									<td><input type="text" id="level"
										value="${memberVO.m_level}"></td>
								</tr>
								<tr>
									<td>선호장르&ensp;&ensp;:</td>
								<!-- 	<td><input type="text" id="favorite"
										value="${memberVO.m_favorite}"></td> -->
								<td style="font-size:30px;">
								<label class="fancy-radio custom-color-coral"> 
                  <input name="m_favorite" value="공포/호러" type="radio" checked><span><i></i>공포/호러</span>
               </label> 
               <label><input name="gender4" value="멜로/로맨스" type="radio"><span><i></i>멜로/로맨스</span></label> 
               <label><input name="m_favorite" value="액션" type="radio"><span><i></i>액션</span></label> 
               <label><input name="m_favorite" value="코미디" type="radio"><span><i></i>코미디</span></label> 
               <label><input name="m_favorite" value="범죄" type="radio"><span><i></i>범죄</span></label> 
               <label><input name="m_favorite" value="스릴러" type="radio"><span><i></i>스릴러</span></label> 
               <label><input name="m_favorite" value="느와르" type="radio"><span><i></i>느와르</span></label> 
               <label><input name="m_favorite" value="가족" type="radio"><span><i></i>가족</span></label> 
               <label><input name="m_favorite" value="애니메이션" type="radio"><span><i></i>애니메이션</span></label> 
               <label><input name="m_favorite" value="코미디" type="radio"><span><i></i>코미디</span></label>
								</td>
               
								
										
										
								</tr>
								<tr>
									<td>블랙리스트여부&ensp;&ensp;:&ensp;&ensp;</td>
									<c:choose>
										<c:when test="${memberVO.m_blacklist eq 'Y'}">
											<td><input type="radio" name="m_blacklist" value="Y"
												checked><span>&nbsp;yes</span>&ensp;&ensp; <input
												type="radio" name="m_blacklist" value="N"><span>&nbsp;no</span>
											</td>
										</c:when>
										<c:otherwise>
											<td><input type="radio" name="m_blacklist" value="Y"><span>&nbsp;yes</span>&ensp;&ensp;
												<input type="radio" name="m_blacklist" value="N" checked><span>&nbsp;no</span>
											</td>
										</c:otherwise>
									</c:choose>
								</tr>
							</table>
						</div>
						<div class="info-right">
							<button type="button" class="btn btn-dark mb-3"
								onclick="location.href='manageMemberInfo'">회원 정보 수정</button>

							<br>
							<button type="button" class="btn btn-dark mb-3"
								onclick="location.href='manageMemberList'">회원 정보 삭제</button>
							<br>

							<button type="button" class="btn btn-dark mb-3 btn-memberlist"
								onclick="location.href='manageMemberInfo?id=${memberVO.id}'">
								> 상세보기로 돌아가기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- Striped table end -->

	</div>
</div>
</div>
<script>
//.js파일의 수정버튼 클릭 시 동작하는 함수에  추가해주기
$('#m_phone').attr('value',$('#phone1').val()+'-'+$('#phone2').val()+'-'+$('#phone3').val());


//.js파일에 추가
//input의 최대 글자수 제한(number일경우, maxlength 동작x)
function numberMaxLength(e){
    if(e.value.length > e.maxLength){
        e.value = e.value.slice(0, e.maxLength);
    }
}
</script>
<!-- main content area end -->
<%@ include file="../footer.jsp"%>
