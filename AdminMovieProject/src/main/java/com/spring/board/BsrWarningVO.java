package com.spring.board;


import java.sql.Date;

import lombok.Data;

@Data
public class BsrWarningVO {

	private int id;	// 신고자
	private int bsr_rno;	// 글번호
	private Date bsr_date;	// 신고날짜
	private String bsr_warncontent;	// 신고 내용
	private String nickname;
	
}
