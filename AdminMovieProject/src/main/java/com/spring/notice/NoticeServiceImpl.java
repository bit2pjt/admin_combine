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

}