package com.spring.board;


import java.sql.Date;

import lombok.Data;

@Data
public class BlackspamVO {
	private int spam_number; // 스팸번호
	private String spam_category; //스팸 카테고리
	private Date spam_date; // 스팸 날짜
}
