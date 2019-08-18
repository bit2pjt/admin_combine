package com.spring.manage;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class BlackListVO {
	private int id; // 회원 아이디
	private Date black_date; // 블랙리스트 등록일
}
