package com.spring.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.manage.MemberVO;

@Controller
public class NoticeController {

	@Autowired
	NoticeService noticeService;

//	// index
//	@RequestMapping(value = "/adminIndex", method = RequestMethod.GET)
//	public String index() {
//		return "index";
//	}
//
//	// index
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Model model, MemberVO memberVO) {
////		model.addAttribute("member", noticeService.dailyABoardCount(bno));
//		
//		
//		return "index";
//	}

//	// 로그인
//	@RequestMapping(value = "/login", method = RequestMethod.GET)
//	public String login() {
//
//		return "login";
//	}

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
	public String qnaDetail(@RequestParam("qna_no") int qna_no, HttpSession session, Model model) {
		
		BoardQnaVO boardQnaVO = noticeService.boardQnaDetail(qna_no);
		AdQnaVO adQnaVO = noticeService.adQnaDetail(qna_no);
		
		
		model.addAttribute("boardQnaVO", boardQnaVO);
		model.addAttribute("adQnaVO", adQnaVO);
		
//		String admin_name = noticeService.getAdminName(1); // 게시물 작성자의 정보
		return "notice/qnaDetail";
	}
	
	
	
	// 1:1 문의 답변 달기
	@ResponseBody
	@RequestMapping(value = "/insertAnswer", method = RequestMethod.GET)
	public String insertAnswer(@RequestParam("qna_no") int qna_no, @RequestParam("aqna_content") String aqna_content, HttpSession session, Model model) {
		AdQnaVO adQnaVO = new AdQnaVO();
		
		adQnaVO.setQna_no(qna_no);
		adQnaVO.setAqna_content(aqna_content);
		int num = noticeService.insertAnswer(adQnaVO);
		String qna_no1 = String.valueOf(qna_no);
//		model.addAttribute("adQnaVO", adQnaVO);// 작성자(어드민)번호
		
		return qna_no1;
	}
	
	// 1:1 문의 답변 수정 
		@ResponseBody
		@RequestMapping(value = "/updateAnswer", method = RequestMethod.GET)
		public String updateAnswer(@RequestParam("qna_no") int qna_no, @RequestParam("aqna_no") int aqna_no, 
				@RequestParam("aqna_content") String aqna_content, HttpSession session, HttpServletRequest request) {
			System.out.println("aqna_no: " + aqna_no);
			System.out.println("aqna_content: " + aqna_content);
			
			AdQnaVO adQnaVO = new AdQnaVO();
			
			String qna_no1 = String.valueOf(qna_no);
			adQnaVO.setAqna_no(aqna_no);
			adQnaVO.setAqna_content(aqna_content);
			int num = noticeService.updateAnswer(adQnaVO);
		
			return qna_no1;
		}
	
	
	// 1:1 문의 답변 작성 액션
	@RequestMapping(value = "/insertAnswerAction", method = RequestMethod.POST)
	public String insertAnswerAction(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			AdQnaVO adQnaVO, BoardQnaVO boardQnaVO, RedirectAttributes rttr) {

		// 관리자 아이디 넣어줘야함
//		adNoticeVO.setAdmin_num(session.getAttribute("admin_num"));
		adQnaVO.setAdmin_num(1); // 임시

		// an_title, an_content의 앞뒤 공백 제거
		adQnaVO.setAqna_content(adQnaVO.getAqna_content().trim());// 내용 입력

		try {
			int result = noticeService.insertAnswer(adQnaVO);
			if (result == 0) {
				return "redirect:/insertAnswer";
			}
		} catch (Exception e) {
			System.out.println("ERROR : insertAnswer - " + e.getMessage());
		}
		return "redirect:/insertAnswer";

	}
	
	
	
	
	
	
	//로그인 액션
	/**
	 * 로그인
	 * 
	 * @param vo       - 로그인시 입력한 정보가 담긴 MemberVO
	 * @param request
	 * @param response
	 * @param model
	 * @return "index"
	 * @throws Exception
//	 */
//	@RequestMapping(value = "/Login")
//	public String MemberLogin(MemberVO vo, HttpServletRequest request, HttpServletResponse response, Model model)
//			throws Exception {
//		String email = vo.getM_email();
//		String pw = vo.getM_password();
//		HttpSession session = request.getSession();
//
//		int check = memberService.userCheck(email, pw);	//로그인 성공 여부
//		
//		if (check == 1) {	//로그인 성공시 메일인증여부 체크
//			String auth = memberService.getCert(email,pw);	//이메일 인증 여부
//			if(auth.equals("Y")) {	//메일인증 성공시 탈퇴여부 체크
//				String deleteyn = memberService.getDeletestatus(email,pw);	//탈퇴 여부
//				if(deleteyn.equals("N")) {
//					session.setAttribute("m_email", email);
//					session.setAttribute("id", memberService.getId(email, pw));
//					request.setAttribute("msg", "login_success");
//					request.setAttribute("rlink", "index");
//				}else {
//					request.setAttribute("msg", "login_delete");
//					request.setAttribute("rlink", "index");
//					//model.addAttribute("msg","delete");
//				}
//			}else {
//				request.setAttribute("msg", "login_cert");
//				request.setAttribute("rlink", "index");
//				//model.addAttribute("msg","cert");
//			}
//		}else if (check == -1) {
//			request.setAttribute("msg", "login_pw");
//			request.setAttribute("rlink", "index");
//			//model.addAttribute("msg","pw");
//		} else {
//			request.setAttribute("msg", "login_idpw");
//			request.setAttribute("rlink", "index");
//			//model.addAttribute("msg","idpw");
//		}
//		return "member/login_alert";
//	}

	//로그아웃 액션
	/**
	 * 로그아웃
	 * 
	 * @param request
	 * @param response
	 * @param model
	 * @return "index"
	 */
	@RequestMapping(value = "/Logout")
	public String MemberLogOut(HttpServletRequest request, HttpServletResponse response, Model model) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/index";
	}


}
