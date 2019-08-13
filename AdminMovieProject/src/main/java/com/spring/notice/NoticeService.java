package com.spring.notice;

import java.util.List;

public interface NoticeService {

	// 전체 공지사항 리스트
	public List<AdNoticeVO> noticeList();

	// qna 리스트 
	public List<BoardQnaVO> qnaList();

}