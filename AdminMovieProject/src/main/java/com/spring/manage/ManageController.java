package com.spring.manage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManageController {
	
	@Autowired
	ManageService manageService;

	// 전체회원 목록
	@RequestMapping(value = "/manageMemberList", method = RequestMethod.GET)
	public String manageMemberList(Model model) {
		model.addAttribute("listAll", manageService.listAll());
		
		return "manage/manageMemberList";
	}
	
	// 회원 상세보기
	@RequestMapping(value = "/manageMemberInfo", method = RequestMethod.GET)
	public String manageMemberInfo() {
		
		return "manage/manageMemberInfo";
	}
	
	// 회원 정보 수정
	@RequestMapping(value = "/manageMemberModify", method = RequestMethod.GET)
	public String manageMemberModify() {
		
		return "manage/manageMemberModify";
	}
	
	// 블랙리스트 목록
	@RequestMapping(value = "/manageBlackList", method = RequestMethod.GET)
	public String manageBlackList(Model model) {
		model.addAttribute("blacklist", manageService.blacklist());
		
		return "manage/manageBlackList";
	}
	
	
	// 탈퇴 신청 회원 목록
	@RequestMapping(value = "/manageMemberOutList", method = RequestMethod.GET)
	public String manageMemberOutList(Model model) {
		model.addAttribute("delete", manageService.deletelist());
		
		return "manage/manageMemberOutList";
	}
	
}
