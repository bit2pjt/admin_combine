package com.spring.member;

import java.util.Date;

import lombok.Data;

@Data
public class BlacklistVO {

	private int id;				//멤버ID(회원 식별 번호)
	private Date black_date;   // 블랙리스트 등록일
	
}
