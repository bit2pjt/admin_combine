package com.spring.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/manageMemberList", method=RequestMethod.GET)
	public String manageMemberList(Model model) {
		model.addAttribute("listAll", memberService.listAll());
		
		return "adminview/manageMemberList";
	}
	
	@RequestMapping(value="/manageBlackList", method=RequestMethod.GET)
	public String manageBlackList(Model model) {
		model.addAttribute("blacklist", memberService.blacklist());
		// 1. 블랙리스트 등록일
		
		return "adminview/manageBlackList";
	}
//	
//	/**
//	  * 자유게시판 게시글 상세 조회
//	  * @param bno - 게시글 번호
//	  * @param session - 세션
//	  * @param model
//	  * @return "boardFreeGet"
//	 */
//	@RequestMapping(value= "/boardFreeGet", method=RequestMethod.GET)
//	public String boardFreeGet(@RequestParam("bno") int bno, HttpSession session
//			, Model model, @ModelAttribute("searchCriteria") SearchCriteria searchCriteria) {
//		String sessionyn = (String)session.getAttribute("m_email");
//		if(sessionyn != null) {
//			int id = boardFreeService.getUser(sessionyn); // 로그인한 사용자의 id값
//			model.addAttribute("id", id);
//		}
//		
//		BoardFreeVO boardFreeVO = boardFreeService.getContent(bno); // 게시글의 내용
//		MemberVO memberVO = boardFreeService.getWriter(boardFreeVO.getId()); // 게시물 작성자의 정보
//		
//		model.addAttribute("sessionyn",sessionyn);
//		model.addAttribute("boardFreeVO", boardFreeVO); // 게시글의 내용
//		model.addAttribute("memberVO", memberVO); // 게시물 작성자의 정보
//		
//		return "board/free/boardFreeGet"; 
//	}
	
	
	@RequestMapping(value="/manageMemberInfo", method=RequestMethod.GET)
	public String manageMemberInfo() {
		return "adminview/manageMemberInfo";
	}
	@RequestMapping(value="/manageMemberModify", method=RequestMethod.GET)
	public String manageMemberModify() {
		return "adminview/manageMemberModify";
	}

}
