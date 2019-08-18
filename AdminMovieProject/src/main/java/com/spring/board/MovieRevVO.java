package com.spring.board;

import java.sql.Date;

import lombok.Data;

@Data
public class MovieRevVO {
	private int mr_code; // 리뷰 코드
	private int id; // 멤버 아이디
	private int mi_code; //영화 코드
	private Date mr_write; // 작성 날짜 MR_WRITE_DATE
	private int mr_like; // 좋아요수 MR_LIKE
	private int mr_dislike; // 싫어요 수 MR_DISLIKE
	private Date mr_update_date; // 수정 날짜 MR_UPDATE_DATE
	private int mr_score; // 점수 MR_SCORE
	private String mr_content; // 내용 MR_CONTENT
	private int mr_alert; // 신고 MR_ALERT
}
