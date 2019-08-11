package com.spring.notice;

import java.util.List;

public interface AdminDAO {
	
	// 전체 공지사항 리스트
	public List<AdNoticeVO> getAllNoticeList();

	// qna 리스트 
}