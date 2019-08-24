package com.spring.board;

import java.util.List;

import com.spring.manage.MemberVO;
import com.spring.paging.SearchCriteria;

public interface BoardShareDAO {
	// 전체 게시물
	List<BoardShareVO> listsAll();
	// 스팸 게시물
	List<BoardShareVO> spamsListAll();
	// 신고댓글
	List<BsrWarningVO> spamsRListAll();
	
	List<BoardShareVO> listSearch(SearchCriteria searchCriteria);

    int countSearchedArticles(SearchCriteria searchCriteria);
    
    // 이름 변경
	BoardShareVO getsContent(int page);
	
	String getMemberNickname(String m_email);	//멤버 닉네임 가져오기
	
	MemberVO getMember(int id);
	
	int getMemberId(String m_email);		//멤버 아이디 가져오기
	
	// 나눔게시판 등록 / 수정
	int insertBoardShare(BoardShareVO shareVO);	 // 나눔게시판 등록
	
	int updateBoardShare(BoardShareVO shareVO);	// 나눔게시판 수정
	
	BoardShareVO selectBoardShare(int bs_bno);	// 나눔게시판 상세정보 가져오기
	
	void updateViewCnt(int bno);
	
	MemberVO getWriter(int id);
	
	int getUser(String email);
	
	WarnVO warn_check(int id);
	
	void WarnCount(int bno);
	
	int insertWarn(WarnVO vo);
	
	WarnVO ReplyWarn(WarnVO vo);
	
	int insertReplyWarn(WarnVO vo);
	
	void ReplyWarnCount(int rno);
	
	BoardShareVO getfContent(int bs_bno);
	
	void deleteSpamSBoard(int bno);
	
	BSReplyVO boardSReplyDetail(int bsr_rno);
	
	void deleteSReply(int rno);
}
