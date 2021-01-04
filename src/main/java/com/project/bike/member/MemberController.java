package com.project.bike.member;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("/member/**")
public class MemberController {
		@Autowired
		private JavaMailSender mailSender;
		@Autowired
		private MemberService memberService;
	
		//아이디 중복검사
		@PostMapping("memberIdCheck")
		public ModelAndView getIdCheck(MemberVO memberVO) throws Exception{
			ModelAndView mv = new ModelAndView();
			memberVO = memberService.getIdCheck(memberVO);
			int message = 0;
			if(memberVO ==null) {
				message = 1;
				
			}
			mv.addObject("msg", message);
			mv.setViewName("common/ajaxResult");
			return mv;
		}
		
		
		@PostMapping("memberMailCheck")
		public ModelAndView memberMailCheck(HttpServletRequest request, HttpServletResponse response) throws Exception {
			ModelAndView mv = new ModelAndView();
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			
			
			 Random r = new Random();
	         int dice = r.nextInt(4589362) + 49311; //이메일로 받는 인증코드 부분 (난수)
	         
	         String setfrom = "yjw5346@gamil.com";
	         // 받는 사람 이메일
	         String title = "인증 이메일 입니다."; // 제목
	         String email=request.getParameter("email");
	        
	         String content =
	         
	         System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
	         
	         System.getProperty("line.separator")+
	                 
	         "안녕하세요 회원님 따릉이를 이용해주셔서 감사합니다"
	         
	         +System.getProperty("line.separator")+
	         
	         System.getProperty("line.separator")+
	 
	         " 인증번호는 " +dice+ " 입니다. "
	         
	         +System.getProperty("line.separator")+
	         
	         System.getProperty("line.separator")+
	         
	         "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; // 내용
	         
	         
	         try {
	             MimeMessage message = mailSender.createMimeMessage();
	             MimeMessageHelper messageHelper = new MimeMessageHelper(message,
	                     true, "UTF-8");

	             messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
	             messageHelper.setTo(email); // 받는사람 이메일
	             messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
	             messageHelper.setText(content); // 메일 내용
	             
	             mailSender.send(message);
	         } catch (Exception e) {
	             System.out.println(e);
	         }
	         
	         mv.addObject("msg", dice);
	         mv.setViewName("common/ajaxResult");
	         return mv;
		}
		
		@GetMapping("memberAgree")
		public void memberAgree() throws Exception{
			
		}
		@GetMapping("memberCertify")
		public void memberCertify() throws Exception{
			
		}
		
		@GetMapping("memberJoinCheck")
		public void memberJoinCheck() throws Exception{
			
		}
		
		@GetMapping("memberJoin")
		public void setMemberJoin() throws Exception{
			
		}
		
		
		@PostMapping("memberJoin")
		public ModelAndView setMemberJoin(MemberVO memberVO) throws Exception{
			ModelAndView mv = new ModelAndView();
			int result = memberService.setMemberJoin(memberVO);
			if(result>0) {
				mv.addObject("msg", "회원가입 완료!");
				mv.addObject("path", "../");
				mv.setViewName("common/result");
			}
			

			return mv;
		}
		
		
		@GetMapping("memberLogin")
		public void getMemberLogin() throws Exception{
			
		}
		
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
