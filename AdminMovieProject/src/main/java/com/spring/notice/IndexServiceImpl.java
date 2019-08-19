package com.spring.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service("IndexService")
@AllArgsConstructor
public class IndexServiceImpl implements NoticeService {
	@Autowired
	private SqlSession sqlSession;

	@Setter(onMethod_ = { @Autowired })
	private IndexDAO indexDAOglobal;

	@Override
	public List<AdNoticeVO> noticeList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardQnaVO> qnaList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertNotice(AdNoticeVO adNoticeVO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String getAdminName(int admin_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AdNoticeVO noticeDetail(int an_code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BoardQnaVO boardQnaDetail(int qna_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AdQnaVO adQnaDetail(int qna_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AdMemberVO userCheck(String admin_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int dailyMemberCount(int id) {
		// TODO Auto-generated method stub
		return 0;
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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateAnswer(AdQnaVO adQnaVO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteAnswer(int aqna_no) {
		// TODO Auto-generated method stub
		
	}

}