package com.spring.board;

import java.sql.Date;

import lombok.Data;

@Data
public class BsrWarningVO {

	private int id;	// 신고자
	private int bsr_rno;	// 글번호
	private Date bfr_date;	// 신고날짜
	private String bfr_warncontent;	// 신고 내용
	
}
