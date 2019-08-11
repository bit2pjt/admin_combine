package com.spring.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	

	@Autowired
//	BoardService boardService;

	// 전체 게시글 목록
	@RequestMapping(value = "/boardAllList", method = RequestMethod.GET)
	public String boardAllList() {
		
		return "board/boardAllList";
	}
	
	// 게시글 상세보기
	@RequestMapping(value = "/boardPostDetail", method = RequestMethod.GET)
	public String boardPostDetail() {
		
		return "board/boardPostDetail";
	}
	
	// 나영리 상세보기
	@RequestMapping(value = "/boardMmlDetail", method = RequestMethod.GET)
	public String boardMmlDetail() {
		
		return "board/boardMmlDetail";
	}
	
	// 신고 게시글 목록
	@RequestMapping(value = "/boardSpamPost", method = RequestMethod.GET)
	public String boardSpamPost() {
		
		return "board/boardSpamPost";
	}
	
	// 신고 댓글 목록
	@RequestMapping(value = "/boardSpamReply", method = RequestMethod.GET)
	public String boardSpamReply() {
		
		return "board/boardSpamReply";
	}
	
	// 댓글 상세보기
	@RequestMapping(value = "/boardReplyDetail", method = RequestMethod.GET)
	public String boardReplyDetail() {
		
		return "board/boardReplyDetail";
	}

}
