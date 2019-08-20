package com.spring.manage;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.paging.Criteria;
import com.spring.paging.SearchCriteria;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service("manageService")
@AllArgsConstructor
public class ManageServiceImpl implements ManageService {

	@Autowired
	private SqlSession sqlSession;

	@Setter(onMethod_ = { @Autowired })
	private ManageDAO manageDAOglobal;

//	@Override
//	public List<MemberVO> listAll() {
//		// 전체 회원 목록
//		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);
//
//		return manageDAO.listAll();
//	}
	
	@Override
    public int countSearchedArticles(SearchCriteria searchCriteria) {
		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);
    	return manageDAO.countSearchedArticles(searchCriteria);
    }


	@Override
	public List<MemberVO> listCriteria(Criteria criteria) {
		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);
		return manageDAO.listCriteria(criteria);
	}

	@Override
	public int countArticles(Criteria criteria) {
		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);
		return manageDAO.countArticles(criteria);
	}
	
	@Override
    public List<MemberVO> listSearch(SearchCriteria searchCriteria) {
		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);
		List<MemberVO> list = manageDAO.listSearch(searchCriteria);
		
		for(int i=0; i<list.size(); i++) {
			int id = list.get(i).getId();
			Date black_date = getBlackDate(id);
			list.get(i).setBlack_date(black_date);
		}
		
		return list;
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
	public Date getBlackDate(int id) {
		// 블랙리스트 등록일
		ManageDAO ManageDAO = sqlSession.getMapper(ManageDAO.class);
		Date black_date = ManageDAO.getBlackDate(id);
		
		return black_date;		
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

	@Override
	public MemberVO getInfo(int id) {
		// 멤버 정보 가져오기
		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);
		MemberVO vo = manageDAO.getInfo(id); 
		
		return vo;
	}

}
