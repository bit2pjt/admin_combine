package com.spring.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.member.MemberDAO;
import com.spring.mypage.OneVO;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service("adminService")
@AllArgsConstructor
public class AdminServiceImpl implements AdminService {
	@Autowired
	private SqlSession sqlSession;

	@Setter(onMethod_ = { @Autowired })
	private AdminDAO adminDAOglobal;

	@Override
	public List<AdNoticeVO> getAllNoticeList() {
		
		AdminDAO adminDAO = sqlSession.getMapper(AdminDAO.class);
		
		return adminDAO.getAllNoticeList();
	}

	@Override
	public List<OneVO> getQnaList() {
		AdminDAO adminDAO = sqlSession.getMapper(AdminDAO.class);
		
		return adminDAO.getQnaList();
	}



}