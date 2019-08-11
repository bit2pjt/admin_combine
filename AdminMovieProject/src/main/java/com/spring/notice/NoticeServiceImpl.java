package com.spring.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service("adminService")
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private SqlSession sqlSession;

	@Setter(onMethod_ = { @Autowired })
	private NoticeDAO adminDAOglobal;

	@Override
	public List<AdNoticeVO> getAllNoticeList() {
		
		NoticeDAO adminDAO = sqlSession.getMapper(NoticeDAO.class);
		
		return adminDAO.getAllNoticeList();
	}



}