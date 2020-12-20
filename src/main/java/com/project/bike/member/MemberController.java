package com.project.bike.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("/member/**")
public class MemberController {

		@Autowired
		private MemberService memberService;
	
		@PostMapping("memberLogin")
		public ModelAndView getMemberLogin(MemberVO memberVO, HttpSession session) throws Exception{
			ModelAndView mv = new ModelAndView();
			memberVO = memberService.getMemberLogin(memberVO);
			
			if(memberVO!=null) {
				session.setAttribute("member", memberVO);
				mv.setViewName("redirect:../");
			}
			else {
				mv.addObject("msg", "로그인 실패");
				mv.addObject("path", "./memberLogin");
				mv.setViewName("common/result");
			}
			
			return mv;
		}
		@GetMapping("memberLogout")
		public String getMemberLogout(HttpSession session) throws Exception{
			session.invalidate();
			return "redirect:../";
		}
		
}
