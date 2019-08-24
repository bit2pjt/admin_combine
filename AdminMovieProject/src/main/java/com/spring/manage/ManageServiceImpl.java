package com.spring.manage;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.board.BoardFreeDAO;
import com.spring.board.BoardFreeVO;
import com.spring.board.BoardShareVO;
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
		System.out.println("list: " + list.size()); // 10
		
		for(int i=0; i<list.size(); i++) {
			int id = list.get(i).getId();
			System.out.println("id: " + id);
			BlackListVO blackListVO = getBlackDate(id);
			System.out.println("확인: " + blackListVO);
			
			if(blackListVO != null) 
				list.get(i).setBlack_date(blackListVO.getBlack_date());
			else
				continue;
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
		System.out.println("11111: " + manageDAO.deletelist());
		List<MemberVO> member = manageDAO.deletelist();
		
		return member;
	}
	

	@Override
	public String userNickName(int id) {
		// 유저 닉네임
		return null;
	}

	@Override
	public BlackListVO getBlackDate(int id) {
		// 블랙리스트 등록일
		ManageDAO ManageDAO = sqlSession.getMapper(ManageDAO.class);
		BlackListVO blackListVO = ManageDAO.getBlackDate(id);
		System.out.println("blackListVO: " + blackListVO);
		return blackListVO;		
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


	@Override
	public List<BoardFreeVO> listFreeAll(int id) {
		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);
		List<BoardFreeVO> list = manageDAO.listFreeAll(id);
		
		return list; 
	}


	@Override
	public List<BoardShareVO> listShareAll(int id) {
		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);
		List<BoardShareVO> list = manageDAO.listShareAll(id);
		
		return list; 
	}


	@Override
	public void deleteBlackList(int id) {
		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);
		manageDAO.deleteBlackList(id);	
		updateBlackList(id);
		
	}
	
	@Override
	public void deleteMemberAdmin(int id) {
		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);
		manageDAO.deleteMemberAdmin(id);	
		updatedeleteMember(id);
		
	}
	
	private void updateBlackList(int id) {
		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);
		manageDAO.updateBlackList(id);
	}
	
	private void updatedeleteMember(int id) {
		ManageDAO manageDAO = sqlSession.getMapper(ManageDAO.class);
		manageDAO.updatedeleteMember(id);
	}

}
