package com.spring.board;

import java.sql.Date;

import lombok.Data;

@Data
public class BfrWarningVO {

	private int bfr_rno;	// 글번호
	private int id;	// 신고자
	private Date bfr_date;	// 신고날짜
	private String bfr_warncontent;	// 신고 내용
	private String nickname;
}
