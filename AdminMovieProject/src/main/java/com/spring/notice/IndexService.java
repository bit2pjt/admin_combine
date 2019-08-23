package com.spring.notice;

interface IndexService {
	// 	index 회원수 일 카운트
	int dailyMemberCount(int id);
	
	// index 자유게시판 글 등록수 일 카운트
	int dailyFBoardCount(int bf_bno);
	
	// index 나눔게시판 글 등록수 일 카운트 
	int dailySBoardCount(int bs_bno);

	// index 나눔게시판 글 등록수 일 카운트 
	int dailyMBoardCount(int mml_num);
	
	// index 모든 게시판 글 등록수
	int dailyABoardCount(int bno);
	
	// index 회원수 전체
	int allMemberCount(int id);
	
}