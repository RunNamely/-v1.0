package com.newsoft.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.newsoft.pojo.Course;

@Controller
public class UserController {

	@Autowired
	private HttpSession session;

	// 跳转到用户显示主页面
	@RequestMapping(value = "/memberlist", method = RequestMethod.GET)
	public ModelAndView Memberlist(Course course) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member-list");
		return mv;
	}

	// 跳转到用户show信息显示主页面
	@RequestMapping(value = "/membershow", method = RequestMethod.GET)
	public ModelAndView Membershow() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member-show");
		return mv;
	}

	// 跳转到用户show信息显示主页面
	@RequestMapping(value = "/changpassword", method = RequestMethod.GET)
	public ModelAndView Changpassword() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("change-password");
		return mv;
	}
	
	// 跳转到用户show信息显示主页面
		@RequestMapping(value = "/memberadd", method = RequestMethod.GET)
		public ModelAndView Memberadd() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("member-add");
			return mv;
		}
}
