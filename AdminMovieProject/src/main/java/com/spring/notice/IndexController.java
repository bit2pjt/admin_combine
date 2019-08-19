package com.spring.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.manage.MemberVO;

@Controller
public class IndexController {

	@Autowired
	NoticeService noticeService;

	// index
	@RequestMapping(value = "/adminIndex", method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	// index
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, MemberVO memberVO) {
//		model.addAttribute("member", noticeService.dailyABoardCount(bno));
		
		
		return "index";
	}

}
