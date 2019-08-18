package com.spring.board;

import java.sql.Date;

import lombok.Data;

@Data
public class CineRevVO {
	private int cr_code; //	CR_CODE
	private int id;//	ID
	private int cc_code; //	CC_CODE
	private String cr_content; //	CR_CONTENT
	private Date cr_write_date;//	CR_WRITE_DATE
	private Date cr_update_date;//	CR_UPDATE_DATE
	private int cr_score; //	CR_SCORE
}
