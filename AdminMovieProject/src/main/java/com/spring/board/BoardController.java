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

	@Autowired(required = false)
	BoardFreeService boardFreeService;

	@Autowired(required = false)
	BoardShareService boardShareService;

//	@Autowired(required=false)
//	MmlService mmlService;

//	@Autowired
//	ManageService manageService;

	// 전체 게시글 목록
	@RequestMapping(value = "/boardAllList", method = RequestMethod.GET)
	public String boardAllList(Model model) {
		// 자유게시판
		model.addAttribute("boardFree", boardFreeService.listfAll());
		// 나눔게시판
		model.addAttribute("boardShare", boardShareService.listsAll());
		// 영화관 리뷰
//		model.addAttribute("cineRev", manageService.listAll());
		// 영화 리뷰
//		model.addAttribute("movieRev", manageService.listAll());
		// 나영리
//		model.addAttribute("mml", mmlService.listAll());

		return "board/boardAllList";
	}

	// 게시글 상세보기
	@RequestMapping(value = "/boardFreeDetail", method = RequestMethod.GET)
	public String boardFreeDetail(@RequestParam("bf_bno") int bf_bno, HttpSession session, Model model) {
		BoardFreeVO boardFreeVO = boardFreeService.getfContent(bf_bno); // 게시글의 내용
		
		MemberVO memberVO = boardFreeService.getWriter(boardFreeVO.getId()); // 게시물 작성자의 정보

		model.addAttribute("boardFreeVO", boardFreeVO); // 게시글의 내용
		model.addAttribute("memberVO", memberVO); // 게시물 작성자의 정보

		return "board/boardFreeDetail";
	}
	
	// 게시글 상세보기
	@RequestMapping(value = "/boardShareDetail", method = RequestMethod.GET)
	public String boardShareDetail(@RequestParam("bs_bno") int bs_bno, HttpSession session, Model model) {
		BoardShareVO boardShareVO = boardShareService.getfContent(bs_bno); // 게시글의 내용
		
		MemberVO memberVO = boardFreeService.getWriter(boardShareVO.getId()); // 게시물 작성자의 정보

		model.addAttribute("boardShareVO", boardShareVO); // 게시글의 내용
		model.addAttribute("memberVO", memberVO); // 게시물 작성자의 정보

		return "board/boardShareDetail";
	}	
	
	
//	@RequestMapping(value = "/boardPostDetail", method = RequestMethod.GET)
//	public String boardPostsDetail(@RequestParam("bs_bno") int bs_bno, HttpSession session, Model model) {
//		BoardShareVO boardShareVO = boardShareService.getsContent(bs_bno); // 게시글의 내용
//		
//		MemberVO memberVO = boardShareService.getWriter(boardShareVO.getId()); // 게시물 작성자의 정보
//
//		model.addAttribute("boardShareVO", boardShareVO); // 게시글의 내용
//		model.addAttribute("memberVO", memberVO); // 게시물 작성자의 정보
//
//		return "board/boardPostDetail";
//	}

	// 나영리 상세보기
	@RequestMapping(value = "/boardMmlDetail", method = RequestMethod.GET)
	public String boardMmlDetail() {

		return "board/boardMmlDetail";
	}

	// 신고 게시글 목록
	@RequestMapping(value = "/boardSpamPost", method = RequestMethod.GET)
	public String boardSpamPost(Model model) {
		// 자유게시판
		model.addAttribute("boardFree", boardFreeService.spamfListAll());
		// 나눔게시판
		model.addAttribute("boardShare", boardShareService.spamsListAll());

		return "board/boardSpamPost";
	}

	// 신고 댓글 목록
	@RequestMapping(value = "/boardSpamReply", method = RequestMethod.GET)
	public String boardSpamReply(Model model) {
		// 자유게시판
		model.addAttribute("boardFree", boardFreeService.spamfRListAll());
		// 나눔게시판
		model.addAttribute("boardShare", boardShareService.spamsRListAll());

		return "board/boardSpamReply";
	}

	// 댓글 상세보기
	@RequestMapping(value = "/boardFReplyDetail", method = RequestMethod.GET)
	public String boardFReplyDetail(@RequestParam("bfr_rno") int bfr_rno, Model model) {
		BFReplyVO bfReplyVO = boardFreeService.boardFReplyDetail(bfr_rno);
		System.out.println("zzzz: " + bfReplyVO);
		model.addAttribute("bfReplyVO", bfReplyVO);
		
		return "board/boardFReplyDetail";
	}
	
	@RequestMapping(value = "/boardSReplyDetail", method = RequestMethod.GET)
	public String boardSReplyDetail(@RequestParam("bsr_rno") int bsr_rno, Model model) {
		BSReplyVO bsReplyVO = boardShareService.boardSReplyDetail(bsr_rno);
		System.out.println("zzzz: " + bsReplyVO);
		model.addAttribute("bsReplyVO", bsReplyVO);
		
		return "board/boardSReplyDetail";
	}
	
	@RequestMapping(value = "/deleteSpamFBoard", method = RequestMethod.GET)
	public String deleteSpamFBoard(@RequestParam("bno") int bno, Model model) {

		boardFreeService.deleteSpamFBoard(bno);
		return "board/boardSpamPost";
	}
	
	@RequestMapping(value = "/deleteSpamSBoard", method = RequestMethod.GET)
	public String deleteSpamSBoard(@RequestParam("bno") int bno, Model model) {

		boardShareService.deleteSpamSBoard(bno);
		return "board/boardSpamPost";
	}
	
	@RequestMapping(value = "/deleteFReply", method = RequestMethod.GET)
	public String deleteFReply(@RequestParam("rno") int rno, Model model) {

		boardFreeService.deleteFReply(rno);
		return "redirect:/boardSpamReply";
	}
	
	@RequestMapping(value = "/deleteSReply", method = RequestMethod.GET)
	public String deleteSReply(@RequestParam("rno") int rno, Model model) {

		boardShareService.deleteSReply(rno);
		return "redirect:/boardSpamReply";
	}
	

}
