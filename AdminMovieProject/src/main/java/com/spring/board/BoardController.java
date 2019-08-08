package com.spring.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.member.MemberService;
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
	
	
	
	
	
	
	@RequestMapping(value="/managePostGet", method=RequestMethod.GET)
	public String managePostGet() {
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
