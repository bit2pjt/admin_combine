<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
/**
* @Class Name :  manageMemberInfo.jsp
* @Description : 관리자 - 회원정보 상세보기 페이지
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
				<h4 class="page-title pull-left">회원정보 상세보기</h4>
				<ul class="breadcrumbs pull-left">
					<li><a href="/admin/">Home</a></li>
					<li><a href="/admin/manageMemberList">전체 회원</a></li>
					<!-- 이전페이지가 블랙리스트회원일경우 전체회원이 아닌 블랙리스트회원으로! 안되면 그냥 없애버려유 -->
					<li><span>회원정보 상세보기</span></li>
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
				<div class="card-memberinfo">
					<!--화면 3분할-->
					<c:choose>
						<c:when test="${memberVO.m_image == null}">
							<div class="info-left">
								<img src="resources/images/person.png" width="150px" height="150px">
							</div>
						</c:when>
						<c:otherwise>
							<div class="info-left">
								<img src="${memberVO.m_image }" width="150px" height="150px">
							</div>
						</c:otherwise>
					</c:choose>

					<div class="info-mid">
						<table class="info-mid-table">
							<tr>
								<td>회원번호&ensp;&ensp;:&ensp;&ensp;</td>
								<td><span>${memberVO.id}</span></td>
							</tr>
							<tr>
								<td>이름&ensp;&ensp;:&ensp;&ensp;</td>
								<td><span>${memberVO.m_name}</span></td>
							</tr>
							<tr>
								<td>닉네임&ensp;&ensp;:&ensp;&ensp;</td>
								<td><span>${memberVO.m_nickname}</span></td>
							</tr>
							<tr>
								<td>이메일&ensp;&ensp;:&ensp;&ensp;</td>
								<td><span>${memberVO.m_email}</span></td>
							</tr>
							<tr>
								<td>이메일 인증여부&ensp;&ensp;:&ensp;&ensp;</td>
								<td><span>${memberVO.m_eagree}</span></td>
							</tr>
							<tr>
								<td>이메일 수신동의&ensp;&ensp;:&ensp;&ensp;</td>
								<td><span>${memberVO.m_cert}</span></td>
							</tr>
							<tr>
								<td>전화번호&ensp;&ensp;:&ensp;&ensp;</td>
								<td><span>${memberVO.m_phone}</span></td>
							</tr>
							<tr>
								<td>SMS 수신동의&ensp;&ensp;:&ensp;&ensp;</td>
								<td><span>${memberVO.m_sagree}</span></td>
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
								<td><span>${memberVO.m_deleteyn}</span></td>
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
								<td><span>${memberVO.m_level}</span></td>
							</tr>
							<tr>
								<td>선호장르&ensp;&ensp;:&ensp;&ensp;</td>
								<td><span>${memberVO.m_favorite}</span></td>
							</tr>
							<tr>
								<td>블랙리스트여부&ensp;&ensp;:&ensp;&ensp;</td>
								<td><span>${memberVO.m_blacklist}</span></td>
							</tr>
						</table>
					</div>
					<div class="info-right">
					<!-- admin에서 회원정보 수정불가 -->
						<button type="button" class="btn btn-dark mb-3"
							onclick="location.href='manageMemberModify?id=${memberVO.id}'" style="visibility:hidden">회원정보 수정</button>
						<br>
						<button type="button" class="btn btn-dark mb-3"
							onclick="location.href='manageMemberPost?id=${memberVO.id}'">게시글 관리</button>
						<br>
						<button type="button" class="btn btn-dark mb-3">블랙리스트 등록</button>
						<br>
						<button type="button" class="btn btn-dark mb-3">회원삭제</button>
						<br>
						<button type="button" class="btn btn-dark mb-3 btn-memberlist"
							onclick="location.href='manageMemberList'">회원목록</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Striped table end -->

	</div>
</div>
</div>
<!-- main content area end -->
<%@ include file="../footer.jsp"%>
