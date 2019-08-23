package com.spring.notice;

import java.sql.Date;

import lombok.Data;

@Data
public class AdNoticeVO {
	
	private int an_code;	//	AN_CODE	: 공지사항 글번호
	private int admin_num;	//	ADMIN_NUM : 작성자 (어드민)
	private String an_content;	//	AN_CONTENT : 공지 내용
	private String an_title;	//	AN_TITLE : 공지 제목
	private Date an_reg_date;	//	AN_REG_DATE : 공지 등록 날짜
	private Date an_update_date;	//	AN_UPDATE_DATE	: 공지 수정 날짜
	private String nickname;
	
}