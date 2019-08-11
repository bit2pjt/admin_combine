package com.spring.manage;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service("manageService")
@AllArgsConstructor
public class ManageServiceImpl implements ManageService {

	@Autowired
	private SqlSession sqlSession;

	@Setter(onMethod_ = { @Autowired })
	private ManageDAO manageDAOglobal;

	@Override
	public List<MemberVO> listAll() {
		// 전체 회원 목록
		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);

		return manageDAO.listAll();
	}

	@Override
	public List<MemberVO> blacklist() {
		// 블랙리스트
		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);

		return manageDAO.blacklist();
	}

	@Override
	public List<MemberVO> deletelist() {
		// 탈퇴신청 목록
		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);

		return manageDAO.deletelist();
	}

	@Override
	public String userNickName(int id) {
		// 유저 닉네임
		return null;
	}

	@Override
	public String getBlackDate(int id) {
		// 블랙리스트 등록일
		return null;
	}

	@Override
	public Date getDeleteDate(int id) {
		// TODO 탈퇴 신청일
		return null;
	}

	@Override
	public Date getRemoveDate(int id) {
		// TODO 삭제 예정일
		return null;
	}

}
