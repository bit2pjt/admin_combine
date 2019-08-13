package com.spring.notice;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoticeController {

	@Autowired
	NoticeService noticeService;

	// index
	@RequestMapping(value = "/adminIndex", method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	// index
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "index";
	}
	
	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		
		return "login";
	}

	// 공지사항 목록
	@RequestMapping(value = "/noticeList", method = RequestMethod.GET)
	public String noticeList(Model model) {
		model.addAttribute("noticeList", noticeService.noticeList());

		return "notice/noticeList";
	}

	// 공지사항 상세보기
	@RequestMapping(value = "/noticeDetail", method = RequestMethod.GET)
	public String noticeDetail(Model model) {
//		model.addAttribute("getAllNoticeList", adminService.getAllNoticeList());

		return "notice/noticeDetail";
	}
	
	// 공지사항 작성
	@RequestMapping(value = "/noticeWrite", method = RequestMethod.GET)
	public String noticeWrite() {
		
		return "notice/noticeWrite";
	}

	// 공지사항 수정
	@RequestMapping(value = "/noticeUpdate", method = RequestMethod.GET)
	public String noticeUpdate() {
		
		return "notice/noticeUpdate";
	}
	
	
	// 1:1 문의 목록
	@RequestMapping(value = "/qnaList", method = RequestMethod.GET)
	public String qnaList(Model model) {
		model.addAttribute("qnaList", noticeService.qnaList());
		
		return "notice/qnaList";
	}
	
	// 1:1 문의 상세보기
	@RequestMapping(value = "/qnaDetail", method = RequestMethod.GET)
	public String qnaDetail() {
		
		return "notice/qnaDetail";
	}

}
