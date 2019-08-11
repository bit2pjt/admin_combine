<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
                            <div class="card-memberinfo">
                                <!--화면 3분할-->
                                <div class="info-left">
                                    <img src="resources/images/person.png" width="150px" height="150px">
                                </div>
                                <div class="info-mid">
                                    <table class="info-mid-table">
                                        <tr>
                                            <td>회원번호&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td><span>회원번호</span></td>
                                        </tr>
                                        <tr>
                                            <td>이름&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td><span>이름</span></td>
                                        </tr>
                                        <tr>
                                            <td>닉네임&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td><input type="text" id="nickname" value="닉네임"></td>
                                        </tr>
                                        <tr>
                                            <td>이메일&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td><span>이메일</span></td>
                                        </tr>
                                        <tr>
                                            <td>이메일 인증여부&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td>
                                                <input type="radio" name="cert" value="y" checked><span>&nbsp;yes</span>&ensp;&ensp;
                                                <input type="radio" name="cert" value="n"><span>&nbsp;no</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>이메일 수신동의&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td>
                                                <input type="radio" name="eagree" value="y" checked><span>&nbsp;yes</span>&ensp;&ensp;
                                                <input type="radio" name="eagree" value="n"><span>&nbsp;no</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>전화번호&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td>
                                                <input type="text" id="phone1" value="010" maxlength="3">
                                                -
                                                <input type="text" id="phone2" value="1234" maxlength="4">
                                                -
                                                <input type="text" id="phone3" value="5678" maxlength="4">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>SMS 수신동의&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td>
                                                <input type="radio" name="sagree" value="y" checked><span>&nbsp;yes</span>&ensp;&ensp;
                                                <input type="radio" name="sagree" value="n"><span>&nbsp;no</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>회원가입일&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td><span>회원가입일</span></td>
                                        </tr>
                                        <tr>
                                            <td>회원정보수정일&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td><span>회원정보수정일</span></td>
                                        </tr>
                                        <tr>
                                            <td>탈퇴여부&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td>
                                                <input type="radio" name="deleteyn" value="y" checked><span>&nbsp;yes</span>&ensp;&ensp;
                                                <input type="radio" name="deleteyn" value="n"><span>&nbsp;no</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>팔로잉수&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td><span>팔로잉수</span></td>
                                        </tr>
                                        <tr>
                                            <td>팔로워수&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td><span>팔로워수</span></td>
                                        </tr>
                                        <tr>
                                            <td>엠블럼 등급&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td><input type="text" id="level" value="엠블럼 등급"></td>
                                        </tr>
                                        <tr>
                                            <td>선호장르&ensp;&ensp;:&ensp;&ensp; </td>
                                            <td><input type="text" id="favorite" value="선호 장르"></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="info-right">
                                    <button type="button" class="btn btn-dark mb-3" onclick="location.href='manageMemberInfo.do'">수정</button><br>
                                    <button type="button" class="btn btn-dark mb-3" onclick="location.href='manageMemberList.do'">회원 정보 삭제</button><br>
                                    <button type="button" class="btn btn-dark mb-3 btn-memberlist" onclick="location.href='manageMemberInfo.do'">회원정보</button>
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
