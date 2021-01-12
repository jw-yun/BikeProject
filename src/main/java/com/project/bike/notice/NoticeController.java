package com.project.bike.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.bike.util.Pager;

@Controller
@RequestMapping("notice/**")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
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
