package com.spring.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.paging.PageMaker;
import com.spring.paging.SearchCriteria;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/manageMemberList", method=RequestMethod.GET)
	public String manageMemberList(Model model) {
		model.addAttribute("member", memberService.listAll());
		return "adminview/manageMemberList";
	}
	
	@RequestMapping(value="/manageBlackList", method=RequestMethod.GET)
	public String manageBlackList() {
		return "adminview/manageBlackList";
	}
	@RequestMapping(value="/manageMemberInfo", method=RequestMethod.GET)
	public String manageMemberInfo() {
		return "adminview/manageMemberInfo";
	}
	@RequestMapping(value="/manageMemberModify", method=RequestMethod.GET)
	public String manageMemberModify() {
		return "adminview/manageMemberModify";
	}

}
