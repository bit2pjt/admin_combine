package com.spring.notice;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;


	@RequestMapping(value = "/adminIndex", method = RequestMethod.GET)
	public String movieList() {
		return "adminview/index";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "adminview/index";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		
		return "adminview/login";
	}

	@RequestMapping(value = "/adminNoticeGet", method = RequestMethod.GET)
	public String adminNoticeGet() {
		return "adminview/adminNoticeGet";
	}

	/**
	 * 관리자 공지사항 목록
	 * 
	 * @param an_code - 게시글 번호
	 * @param session - 세션
	 * @param model
	 * @return "adminNoticeList"
	 */
	@RequestMapping(value = "/adminNoticeList", method = RequestMethod.GET)
	public String adminNoticeList(Model model) {
		model.addAttribute("getAllNoticeList", adminService.getAllNoticeList());

		return "adminview/adminNoticeList";
	}

	@RequestMapping(value = "/adminNoticeUpdate", method = RequestMethod.GET)
	public String adminNoticeUpdate() {
		return "adminview/adminNoticeUpdate";
	}

	@RequestMapping(value = "/adminNoticeWrite", method = RequestMethod.GET)
	public String adminNoticeWrite() {
		return "adminview/adminNoticeWrite";
	}

	@RequestMapping(value = "/adminQnaGet", method = RequestMethod.GET)
	public String adminQnaGet() {
		return "adminview/adminQnaGet";
	}

	@RequestMapping(value = "/adminQnaUpdate", method = RequestMethod.GET)
	public String adminQnaUpdate() {
		return "adminview/adminQnaUpdate";
	}

	@RequestMapping(value = "/adminQnaList", method = RequestMethod.GET)
	public String adminQnaList(Model model) {
		model.addAttribute("getQnaList");
		
		return "adminview/adminQnaList";
	}

	@RequestMapping(value = "/adminQnaModal", method = RequestMethod.GET)
	public String adminQnaModal() {
		return "adminview/adminQnaModal";
	}

}
