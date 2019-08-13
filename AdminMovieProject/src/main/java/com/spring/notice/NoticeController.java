package com.spring.notice;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String noticeDetail(@RequestParam("an_code") int an_code, HttpSession session, Model model) {
		AdNoticeVO adNoticeVO = noticeService.noticeDetail(an_code);
		
		model.addAttribute("adNoticeVO", adNoticeVO);

		String admin_name = noticeService.getAdminName(1); // 게시물 작성자의 정보

		
		return "notice/noticeDetail";
	}

	// 공지사항 작성
	@RequestMapping(value = "/noticeWrite", method = RequestMethod.GET)
	public String noticeWrite(HttpSession session, HttpServletRequest request) {
		// 사용자 정보
//		int admin_num = (int) session.getAttribute("admin_num");
//		String admin_name = noticeService.getAdminName(admin_num); 
		
		String admin_name = noticeService.getAdminName(1);	//임시
		
		request.setAttribute("admin_name", admin_name);

		return "notice/noticeWrite";
	}

	// 공지사항 작성 액션
	@RequestMapping(value = "/noticeWriteAction", method = RequestMethod.POST)
	public String noticeWriteAction(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			AdNoticeVO adNoticeVO, RedirectAttributes rttr) {

		// 관리자 아이디 넣어줘야함
//		adNoticeVO.setAdmin_num(session.getAttribute("admin_num"));
		adNoticeVO.setAdmin_num(1); // 임시

		// an_title, an_content의 앞뒤 공백 제거
		adNoticeVO.setAn_content(adNoticeVO.getAn_content().trim());// 내용 입력
		adNoticeVO.setAn_title(adNoticeVO.getAn_title().trim()); // 제목입력

		try {
			int result = noticeService.insertNotice(adNoticeVO);
			if (result == 0) {
				return "redirect:/noticeWrite";
			}
		} catch (Exception e) {
			System.out.println("ERROR : noticeWriteAction - " + e.getMessage());
		}
		return "redirect:/noticeList";

	}

	// 공지사항 수정
	@RequestMapping(value = "/noticeUpdate", method = RequestMethod.GET)
	public String noticeUpdate() {

		return "notice/noticeUpdate";
	}
	
	// 공지사항 수정 액션
	

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
