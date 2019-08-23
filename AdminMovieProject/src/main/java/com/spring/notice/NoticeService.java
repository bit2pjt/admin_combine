package com.spring.notice;

import java.util.List;

import com.spring.manage.MemberVO;

interface NoticeService {

	String getMemberNickname(String m_email);	//멤버 닉네임 가져오기
	
	MemberVO getMember(int id);
	
	int getMemberId(String m_email);		//멤버 아이디 가져오기
	
	
	// 전체 공지사항 리스트
	List<AdNoticeVO> noticeList();

	// qna 리스트 
	List<BoardQnaVO> qnaList();

	//공지사항 등록
	int insertNotice(AdNoticeVO adNoticeVO);

	//관리자 이름 
	String getAdminName(int admin_id);
	
	// 공지사항 내용
	AdNoticeVO noticeDetail(int an_code);

	// qna 내용
	BoardQnaVO boardQnaDetail(int qna_no);
	
	// qna 답변 내용
	AdQnaVO adQnaDetail(int qna_no);
	
	// 로그인
	AdMemberVO userCheck(String admin_id);
	
//	// 	index 회원수 일 카운트
//	int dailyMemberCount(int id);
//	
//	// index 자유게시판 글 등록수 일 카운트
//	int dailyFBoardCount(int bf_bno);
//	
//	// index 나눔게시판 글 등록수 일 카운트 
//	int dailySBoardCount(int bs_bno);
//
//	// index 나눔게시판 글 등록수 일 카운트 
//	int dailyMBoardCount(int mml_num);
//	
//	// index 모든 게시판 글 등록수
//	int dailyABoardCount(int bno);
	
	// index 회원수 전체
	int allMemberCount(int id);

	// qna 답변 입력
	int insertAnswer(AdQnaVO adQnaVO);
	
	int updateBoardQna(AdQnaVO adQnaVO);
	
	// qna 답변 수정
	int updateAnswer(AdQnaVO adQnaVO);
	
	// qna 답변 삭제
	void deleteAnswer(int aqna_no);
}