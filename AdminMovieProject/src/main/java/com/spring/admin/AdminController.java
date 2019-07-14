package com.spring.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller(value = "/admin")
public class AdminController {

	@RequestMapping(value="/adminIndex.do", method=RequestMethod.GET)
	public String movieList() {
		return "index";
	}
	@RequestMapping(value="/manageMemberList.do", method=RequestMethod.GET)
	public String manageMemberList() {
		return "manageMemberList";
	}
	@RequestMapping(value="/manageBlackList.do", method=RequestMethod.GET)
	public String manageBlackList() {
		return "manageBlackList";
	}
	@RequestMapping(value="/manageMemberInfo.do", method=RequestMethod.GET)
	public String manageMemberInfo() {
		return "manageMemberInfo";
	}
	@RequestMapping(value="/manageMemberModify.do", method=RequestMethod.GET)
	public String manageMemberModify() {
		return "manageMemberModify";
	}
	@RequestMapping(value="/manageMemberPost.do", method=RequestMethod.GET)
	public String manageMemberPost() {
		return "manageMemberPost";
	}
	@RequestMapping(value="/managePostGet.do", method=RequestMethod.GET)
	public String managePostGet() {
		return "managePostGet";
	}
	@RequestMapping(value="/manageReviewGet.do", method=RequestMethod.GET)
	public String manageReviewGet() {
		return "manageReviewGet";
	}
	@RequestMapping(value="/manageMmlGet.do", method=RequestMethod.GET)
	public String manageMmlGet() {
		return "manageMmlGet";
	}
	@RequestMapping(value="/manageSpamPost.do", method=RequestMethod.GET)
	public String manageSpamPost() {
		return "manageSpamPost";
	}
	@RequestMapping(value="/adminNoticeGet.do", method=RequestMethod.GET)
	public String adminNoticeGet() {
		return "adminNoticeGet";
	}
	@RequestMapping(value="/adminNoticeList.do", method=RequestMethod.GET)
	public String adminNoticeList() {
		return "adminNoticeList";
	}
	@RequestMapping(value="/adminNoticeUpdate.do", method=RequestMethod.GET)
	public String adminNoticeUpdate() {
		return "adminNoticeUpdate";
	}
	@RequestMapping(value="/adminNoticeWrite.do", method=RequestMethod.GET)
	public String adminNoticeWrite() {
		return "adminNoticeWrite";
	}
	@RequestMapping(value="/adminQnaGet.do", method=RequestMethod.GET)
	public String adminQnaGet() {
		return "adminQnaGet";
	}
	@RequestMapping(value="/adminQnaUpdate.do", method=RequestMethod.GET)
	public String adminQnaUpdate() {
		return "adminQnaUpdate";
	}
	@RequestMapping(value="/adminQnaList.do", method=RequestMethod.GET)
	public String adminQnaList() {
		return "adminQnaList";
	}
	@RequestMapping(value="/adminQnaModal.do", method=RequestMethod.GET)
	public String adminQnaModal() {
		return "adminQnaModal";
	}
}
