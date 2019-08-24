package com.spring.board;
import java.util.List;

import com.spring.manage.MemberVO;
import com.spring.paging.Criteria;
import com.spring.paging.SearchCriteria;

interface BoardFreeService {

	List<BoardFreeVO> listfAll();
	// 스팸 게시물
	List<BoardFreeVO> spamfListAll();
	// 신고댓글
	List<BfrWarningVO> spamfRListAll();
	
	List<BoardFreeVO> listCriteria(Criteria criteria);
	
	List<BoardFreeVO> listSearch(SearchCriteria searchCriteria);

	int countSearchedArticles(SearchCriteria searchCriteria);

	int countArticles(Criteria criteria);

	String getMemberNickname(String m_email); // 멤버 닉네임 가져오기

	MemberVO getMember(int id);

	int getMemberId(String m_email); // 멤버 아이디 가져오기

	// 자유게시판 등록 / 수정
	int insertBoardFree(BoardFreeVO freeVO); // 자유게시판 등록

	int updateBoardFree(BoardFreeVO freeVO); // 자유게시판 수정
	
	BoardFreeVO selectBoardFree(int bf_bno); // 자유게시판 상세정보 가져오기

	// 이름변경
	BoardFreeVO getfContent(int page);

	void boardDelete(int bno);

	MemberVO getWriter(int id);

	int getUser(String email);

	String thumb_check(ThumbVO vo);

	String reply_check(ThumbVO vo);

	int plusRecommend(ThumbVO vo);

	int replyRecommend(ThumbVO vo);

	int insertWarn(WarnVO vo);

	int insertReplyWarn(WarnVO vo);

	String warn_check(WarnVO vo);

	String ReplyWarn(WarnVO vo);
	
	void deleteSpamFBoard(int bno);
	
	void deleteFReply(int rno);
	
	BFReplyVO boardFReplyDetail(int bfr_rno);
}
