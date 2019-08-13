package com.spring.notice;

import java.util.List;

public interface NoticeDAO {
	
	// 전체 공지사항 리스트
	public List<AdNoticeVO> noticeList();

	// qna 리스트 
	public List<BoardQnaVO> qnaList();
	
	//공지사항 등록
	int insertNotice(AdNoticeVO adNoticeVO);
	
	//관리자 이름 
	public String getAdminName(int admin_id);
	
	// 공지사항 내용
	AdNoticeVO noticeDetail(int an_code);
}