package com.spring.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.manage.MemberVO;

@Controller
public class BoardController {
	


	@Autowired(required=false)
	BoardFreeService boardFreeService;
	
//	@Autowired(required=false)
//	BoardShareService boardShareService;
	
//	@Autowired(required=false)
//	MmlService mmlService;
	
//	@Autowired
//	ManageService manageService;
	
	// 전체 게시글 목록
	@RequestMapping(value = "/boardAllList", method = RequestMethod.GET)
	public String boardAllList(Model model) {
		// 자유게시판
		model.addAttribute("boardFree", boardFreeService.listAll());
		// 나눔게시판
//		model.addAttribute("boardShare", boardShareService.listAll());
		// 영화관 리뷰
//		model.addAttribute("cineRev", manageService.listAll());
		// 영화 리뷰
//		model.addAttribute("movieRev", manageService.listAll());
		// 나영리
//		model.addAttribute("mml", mmlService.listAll());
		
		return "board/boardAllList";
	}
	
	// 게시글 상세보기
	@RequestMapping(value = "/boardPostDetail", method = RequestMethod.GET)
	public String boardPostDetail(@RequestParam("bf_bno") int bf_bno, HttpSession session, Model model) {
		BoardFreeVO boardFreeVO = boardFreeService.getContent(bf_bno); // 게시글의 내용
		MemberVO memberVO = boardFreeService.getWriter(boardFreeVO.getId()); // 게시물 작성자의 정보
		
		model.addAttribute("boardFreeVO", boardFreeVO); // 게시글의 내용
		model.addAttribute("memberVO", memberVO); // 게시물 작성자의 정보


		return "board/boardPostDetail";
	}
	
	// 나영리 상세보기
	@RequestMapping(value = "/boardMmlDetail", method = RequestMethod.GET)
	public String boardMmlDetail() {
		
		return "board/boardMmlDetail";
	}
	
	// 신고 게시글 목록
	@RequestMapping(value = "/boardSpamPost", method = RequestMethod.GET)
	public String boardSpamPost(Model model) {
		// 자유게시판
		model.addAttribute("boardFree", boardFreeService.spamListAll());
		
		return "board/boardSpamPost";
	}
	
	// 신고 댓글 목록
	@RequestMapping(value = "/boardSpamReply", method = RequestMethod.GET)
	public String boardSpamReply(Model model) {
		// 자유게시판
		model.addAttribute("boardFree", boardFreeService.spamRListAll());
		
		return "board/boardSpamReply";
	}
	
	// 댓글 상세보기
	@RequestMapping(value = "/boardReplyDetail", method = RequestMethod.GET)
	public String boardReplyDetail() {
		
		return "board/boardReplyDetail";
	}

}
