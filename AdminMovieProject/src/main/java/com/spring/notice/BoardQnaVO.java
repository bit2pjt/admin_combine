package com.spring.notice;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardQnaVO {


	private int qna_no;		//1:1 문의 글번호
	private int id;			//1:1 문의 작성자 멤버ID
	private String qna_category;	//1:1 문의 카테고리
	private String qna_title;	//1:1 문의 타이틀
	private String qna_content;	//1:1 문의 내용 
	private Date qna_date;	//1:1 문의 작성날짜
	private Date qna_update_date;	//1:1 문의 수정날짜
	private String qna_answer;	//1:1 문의 답변여부
	private String nickname;
	
	public String toString() {
		return "[" + qna_no + ", " + id + ", " + qna_category + ", " + qna_title + ", " + qna_content + ", " + qna_date + ", " + qna_update_date + ", " + qna_answer+ "]\n"; 
	}
}
	