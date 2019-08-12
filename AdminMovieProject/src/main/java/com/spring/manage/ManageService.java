package com.spring.manage;

import java.sql.Date;
import java.util.List;

public interface ManageService {

	// 전체 멤버 리스트
	public List<MemberVO> listAll();
	
	// 블랙리스트
	public List<MemberVO> blacklist();
	
	// 탈퇴 신청 리스트
	public List<MemberVO> deletelist();
	
	// 유저 닉네임 가져오기
	public String userNickName(int id);

	// 블랙리스트 등록일 가져오기
	public String getBlackDate(int id);
	
	// 탈퇴 신청일 가져오기
	public Date getDeleteDate(int id);
	
	// 탈퇴 예정일 가져오기
	public Date getRemoveDate(int id);
	
	// 멤버 정보 가져오기
	MemberVO getInfo(int id);
}
