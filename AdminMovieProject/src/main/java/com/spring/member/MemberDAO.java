package com.spring.member;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.paging.Criteria;

public interface MemberDAO {
	
	// MemberList - 멤버 리스트
	List<MemberVO> listAll();
	
	List<MemberVO> listCriteria(Criteria criteria);
	
//	List<MemberVO> listSearch(SearchCriteria searchCriteria);
	
		
	public int insertMember(MemberVO vo);
	
	public MemberVO userCheck(String email);
	
	public MemberVO getMember(String email);
	
	public int updateMember(MemberVO vo);
	
	public void deleteMember(String email);
	
	public String findEmail(MemberVO vo);
	
	public MemberVO findPw(MemberVO vo);
	

	public void memberJoin(MemberVO vo);

	public int emailOverlapChk(String email);
	
	public int nickOverlapChk(String nickname);

	public int updatePw(MemberVO vo);

	public String userNickName(int id);
	
	public int getId(@Param("m_email") String m_email, @Param("m_password")String m_password);

}