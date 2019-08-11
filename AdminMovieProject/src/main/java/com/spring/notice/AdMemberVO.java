package com.spring.notice;

import lombok.Data;

@Data
public class AdMemberVO {
	
	private int admin_num;	//	ADMIN_NUM : 작성자 (어드민)
	private String admin_id;	//	ADMIN_ID : 관리자 아이디
	private String admin_password;	//	ADMIN_PASSWORD : 관리자 비밀번호
	private String admin_name;// 관리자 이름~
}