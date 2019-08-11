package com.spring.member;

import java.util.List;

public interface MemberService {
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

	// 전체 멤버 리스트
	public List<MemberVO> listAll();
	
	// 블랙리스트
	public List<MemberVO> blacklist();
	
	// 블랙리스트 등록일 가져오기
	public String getBlackDate(int id);
}