package com.spring.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {

	
	@RequestMapping(value="/manageMemberPost", method=RequestMethod.GET)
	public String manageMemberPost() {
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
