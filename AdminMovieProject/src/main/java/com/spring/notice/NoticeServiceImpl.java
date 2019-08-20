package com.spring.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service("noticeService")
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private SqlSession sqlSession;

	@Setter(onMethod_ = { @Autowired })
	private NoticeDAO noticeDAOglobal;

	@Override
	public List<AdNoticeVO> noticeList() {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		
		return noticeDAO.noticeList();
	}

	@Override
	public List<BoardQnaVO> qnaList() {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		
		return noticeDAO.qnaList();
	}

	@Override
	public int insertNotice(AdNoticeVO adNoticeVO) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		int result = noticeDAO.insertNotice(adNoticeVO);
		
		return result;
	}

	@Override
	public String getAdminName(int admin_id) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		String admin_name = noticeDAO.getAdminName(admin_id);
		
		return admin_name;
	}

	@Override
	public AdNoticeVO noticeDetail(int an_code) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		AdNoticeVO adNoticeVO = noticeDAO.noticeDetail(an_code);
		
		return adNoticeVO;
	}

	@Override
	public BoardQnaVO boardQnaDetail(int qna_no) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		BoardQnaVO boardQnaVO = noticeDAO.boardQnaDetail(qna_no);
		
		return boardQnaVO;
	}

	@Override
	public AdQnaVO adQnaDetail(int qna_no) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		AdQnaVO adQnaVO = noticeDAO.adQnaDetail(qna_no);
		
		return adQnaVO;
	}

	@Override
	public AdMemberVO userCheck(String admin_id) {
		return null;
	}

	@Override
	public int dailyMemberCount(int id) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		int dailyMemberCount = noticeDAO.dailyMemberCount(id);
		
		return dailyMemberCount;
	}

	@Override
	public int dailyFBoardCount(int bf_bno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int dailySBoardCount(int bs_bno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int dailyMBoardCount(int mml_num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int dailyABoardCount(int bno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int allMemberCount(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertAnswer(AdQnaVO adQnaVO) {
		// 답변입력
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		int result = noticeDAO.insertAnswer(adQnaVO);
		noticeDAO.updateBoardQna(adQnaVO);
		return result;
	}

	@Override
	public int updateAnswer(AdQnaVO adQnaVO) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		int result = noticeDAO.updateAnswer(adQnaVO);
		
		return result;
	}

	@Override
	public void deleteAnswer(int aqna_no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int updateBoardQna(AdQnaVO adQnaVO) {
		NoticeDAO noticeDAO = sqlSession.getMapper(NoticeDAO.class);
		int result = noticeDAO.updateBoardQna(adQnaVO);
		
		return result;
	}
}