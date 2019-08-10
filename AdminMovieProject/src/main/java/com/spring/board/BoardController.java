package com.spring.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.member.MemberService;
import com.spring.member.MemberVO;
import com.spring.paging.PageMaker;
import com.spring.paging.SearchCriteria;
import com.spring.boardShare.BoardShareService;
import com.spring.mml.MmlService;

@Controller
public class BoardController {

	@Autowired(required=false)
	BoardFreeService boardFreeService;
	
	@Autowired(required=false)
	BoardShareService boardShareService;
	
	@Autowired(required=false)
	MmlService mmlService;
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/manageMemberPost", method=RequestMethod.GET)
	public String manageMemberPost(Model model,@ModelAttribute("searchCriteria") 
	SearchCriteria searchCriteria) {
		
	PageMaker pageMaker = new PageMaker();
    pageMaker.setCriteria(searchCriteria);
    pageMaker.setTotalCount(boardFreeService.countSearchedArticles(searchCriteria));
    pageMaker.setTotalCount(boardShareService.countSearchedArticles(searchCriteria));
    
    model.addAttribute("boardfree", boardFreeService.listSearch(searchCriteria));
    model.addAttribute("boardshare", boardShareService.listSearch(searchCriteria));
    model.addAttribute("mml", mmlService.listAll());
    
    model.addAttribute("pageMaker", pageMaker);	
    
		return "adminview/manageMemberPost";
	}
	
	@RequestMapping(value="/manageSpamReply", method=RequestMethod.GET)
	public String manageSpamReply(Model model,@ModelAttribute("searchCriteria") 
	SearchCriteria searchCriteria) {
		
	PageMaker pageMaker = new PageMaker();
    pageMaker.setCriteria(searchCriteria);
    pageMaker.setTotalCount(boardFreeService.countSearchedArticles(searchCriteria));
    pageMaker.setTotalCount(boardShareService.countSearchedArticles(searchCriteria));
    
    model.addAttribute("boardfree", boardFreeService.listSearch(searchCriteria));
    model.addAttribute("boardshare", boardShareService.listSearch(searchCriteria));
    model.addAttribute("mml", mmlService.listAll());
    
    model.addAttribute("pageMaker", pageMaker);	
    
		return "adminview/manageSpamReply";
	}
	
	
	
	
	@RequestMapping(value="/managePostGet", method=RequestMethod.GET)
	public String managePostGet(@RequestParam("bno") int bno, HttpSession session
				, Model model, @ModelAttribute("searchCriteria") SearchCriteria searchCriteria) {
			String sessionyn = (String)session.getAttribute("m_email");
			if(sessionyn != null) {
				int id = boardFreeService.getUser(sessionyn); // 로그인한 사용자의 id값
				model.addAttribute("id", id);
			}
			
			BoardFreeVO boardFreeVO = boardFreeService.getContent(bno); // 게시글의 내용
			MemberVO memberVO = boardFreeService.getWriter(boardFreeVO.getId()); // 게시물 작성자의 정보
			
			model.addAttribute("sessionyn",sessionyn);
			model.addAttribute("boardFreeVO", boardFreeVO); // 게시글의 내용
			model.addAttribute("memberVO", memberVO); // 게시물 작성자의 정보
			
		return "adminview/managePostGet";
	}
	
	@RequestMapping(value="/manageReviewGet", method=RequestMethod.GET)
	public String manageReviewGet() {
		return "adminview/manageReviewGet";
	}
	@RequestMapping(value="/manageMmlGet", method=RequestMethod.GET)
	public String manageMmlGet() {
		return "adminview/manageMmlGet";
	}
	@RequestMapping(value="/manageSpamPost", method=RequestMethod.GET)
	public String manageSpamPost() {
		return "adminview/manageSpamPost";
	}
	
}
