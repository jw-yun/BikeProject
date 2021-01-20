package com.project.bike.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.bike.util.Pager;

@Controller
@RequestMapping("notice/**")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("bike")
	public void bike() throws Exception{
		
	}
	
	@GetMapping("noticeDelete")
	public ModelAndView setDelete(NoticeVO noticeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setDelete(noticeVO);
		if(result>0) {
			mv.addObject("msg", "삭제되었습니다.");
			mv.addObject("path", "./noticeList");
			
			mv.setViewName("common/result");
		}
		
		return mv;
		
	}
	
	@GetMapping("noticeSelect")
	public ModelAndView getOne(NoticeVO noticeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		noticeVO = noticeService.getOne(noticeVO);
		mv.addObject("vo", noticeVO);
		mv.setViewName("notice/noticeSelect");
		return mv;
	}
	
	@GetMapping("noticeWrite")
	public void setInsert() throws Exception{
		
	}
	@PostMapping("noticeWrite")
	public ModelAndView setInert(NoticeVO noticeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setInsert(noticeVO);
		String message = "공지사항 작성 완료";
		if(result>0) {
			mv.addObject("msg", message);
			mv.addObject("path","./noticeList");
			mv.setViewName("common/result");
		}
		return mv;
	}
	
	
	@GetMapping("noticeList")
	public ModelAndView getList(Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<NoticeVO> ar = noticeService.getList(pager);
		mv.addObject("notice", ar);
		mv.addObject("pager", pager);
		mv.setViewName("notice/noticeList");
	
		return mv;
	}
}
