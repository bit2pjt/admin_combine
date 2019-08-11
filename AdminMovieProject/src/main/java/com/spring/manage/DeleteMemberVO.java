package com.spring.manage;

import java.sql.Date;

import lombok.Data;

@Data
public class DeleteMemberVO {
	private int id; // 회원 아이디
	private Date delete_date; // 탈퇴신청 날짜
	private Date remove_date; // 삭제 날짜
}
