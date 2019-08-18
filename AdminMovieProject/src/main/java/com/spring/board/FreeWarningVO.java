package com.spring.board;

import java.sql.Date;

import lombok.Data;

@Data
public class FreeWarningVO {
	
	private int bf_bno;	// 글번호
	private int id;	// 신고자
	private Date bf_date;	// 신고날짜
	private String bf_warncontent;	// 신고 내용
	
}
