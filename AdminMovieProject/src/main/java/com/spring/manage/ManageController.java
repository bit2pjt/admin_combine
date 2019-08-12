package com.spring.manage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String manageMemberInfo(@RequestParam("id") int id, HttpSession session
			, Model model) {
		
		MemberVO memberVO = manageService.getInfo(id);
		
		model.addAttribute("memberVO", memberVO); // 멤버 정보
		
		return "manage/manageMemberInfo";
	}
	
	// 회원 정보 수정
	@RequestMapping(value = "/manageMemberModify", method = RequestMethod.GET)
	public String manageMemberModify(HttpSession session, HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		MemberVO memberVO = manageService.getInfo(id);
		
	    request.setAttribute("memberVO", memberVO);
		
		return "manage/manageMemberModify";
	}
	
	// 회원 정보 수정 액션
	
	
	// 블랙리스트 목록
	@RequestMapping(value = "/manageBlackList", method = RequestMethod.GET)
	public String manageBlackList(Model model, HttpServletRequest request) {
		model.addAttribute("blacklist", manageService.blacklist());
		
		int id = Integer.parseInt(request.getParameter("id"));
		MemberVO memberVO = manageService.getInfo(id);
		
	    request.setAttribute("memberVO", memberVO);
		
		return "manage/manageBlackList";
	}
	
	
	// 탈퇴 신청 회원 목록
	@RequestMapping(value = "/manageMemberOutList", method = RequestMethod.GET)
	public String manageMemberOutList(Model model) {
		model.addAttribute("delete", manageService.deletelist());
		
		return "manage/manageMemberOutList";
	}
	
}
