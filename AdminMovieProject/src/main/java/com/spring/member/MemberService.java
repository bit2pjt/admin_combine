package com.spring.member;

import java.util.List;

import com.spring.paging.Criteria;

public interface MemberService {
	
	// MemberList - 멤버 리스트
		List<MemberVO> listAll();
		
		List<MemberVO> listCritria(Criteria criteria);
		
//		List<MemberVO> listSearch(SearchCriteria searchCriteria);
	
	
	public int insertMember(MemberVO vo);
	
	public int userCheck(String email, String pw);
	
	public MemberVO getMember(String email);
	
	public int updateMember(MemberVO vo);
	
	public void deleteMember(String email);
	
	public String findEmail(MemberVO vo);
	
	public MemberVO findPw(MemberVO vo);
	

	public void memberJoin(MemberVO vo);

	public boolean emailOverlapChk(MemberVO vo);
	
	public boolean nickOverlapChk(MemberVO vo);

	public int updatePw(MemberVO vo);
	
	public int getId(String m_email, String m_password);
	
	
//	int countSearchedArticles(SearchCriteria searchCriteria);

}