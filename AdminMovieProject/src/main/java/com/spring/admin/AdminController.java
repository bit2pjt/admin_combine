package com.spring.admin;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

	@RequestMapping(value="/adminIndex", method=RequestMethod.GET)
	public String movieList() {
		return "adminview/index";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "adminview/index";
	}
	
	@RequestMapping(value="/adminNoticeGet", method=RequestMethod.GET)
	public String adminNoticeGet() {
		return "adminview/adminNoticeGet";
	}
	@RequestMapping(value="/adminNoticeList", method=RequestMethod.GET)
	public String adminNoticeList() {
		return "adminview/adminNoticeList";
	}
	@RequestMapping(value="/adminNoticeUpdate", method=RequestMethod.GET)
	public String adminNoticeUpdate() {
		return "adminview/adminNoticeUpdate";
	}
	@RequestMapping(value="/adminNoticeWrite", method=RequestMethod.GET)
	public String adminNoticeWrite() {
		return "adminview/adminNoticeWrite";
	}
	@RequestMapping(value="/adminQnaGet", method=RequestMethod.GET)
	public String adminQnaGet() {
		return "adminview/adminQnaGet";
	}
	@RequestMapping(value="/adminQnaUpdate", method=RequestMethod.GET)
	public String adminQnaUpdate() {
		return "adminview/adminQnaUpdate";
	}
	@RequestMapping(value="/adminQnaList", method=RequestMethod.GET)
	public String adminQnaList() {
		return "adminview/adminQnaList";
	}
	@RequestMapping(value="/adminQnaModal", method=RequestMethod.GET)
	public String adminQnaModal() {
		return "adminview/adminQnaModal";
	}
	
}
