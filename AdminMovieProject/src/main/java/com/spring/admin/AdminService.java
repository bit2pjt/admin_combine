package com.spring.admin;

import java.util.List;

import com.spring.mypage.OneVO;

public interface AdminService {

	// 전체 공지사항 리스트
	public List<AdNoticeVO> getAllNoticeList();

	// qna 리스트 
	public List<OneVO> getQnaList();

}