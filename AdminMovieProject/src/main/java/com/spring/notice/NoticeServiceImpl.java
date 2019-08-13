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

}