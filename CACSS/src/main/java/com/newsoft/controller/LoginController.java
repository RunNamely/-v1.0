package com.newsoft.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.newsoft.pojo.User;
import com.newsoft.service.IUserService;


@Controller
public class LoginController {

	@Autowired
	IUserService userService;
	
	@Autowired
	private HttpSession session;

	//跳转到welcome界面
    @RequestMapping(value = "/welcome")
	public String toWelcome() {
        return "welcome";
	}
	
	//跳转到登录界面
    @RequestMapping(value = "/login")
	public String toLogin() {
        return "login";
	}
	
	
	//拦截index页面
	@RequestMapping("/")
	public String indexHandler() {
		return "login";
	}
	
	@SuppressWarnings("unused")
	@RequestMapping(value = "/userlogin", method = RequestMethod.POST)
	public ModelAndView loginHandler(User user,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(user.getUserLoginName()!=null) {
			User user1 = userService.findUserByUserName(user.getUserLoginName());
			if (user1 == null) {
				mav.setViewName("login");
				mav.addObject("error","用户不存在");
			} else if (!(user.getUserPass().equals(user1.getUserPass()))){
				mav.setViewName("login");	
				mav.addObject("error","密码输入有误");
			}else {
				session.setAttribute("uName",user.getUserLoginName());
				session.setAttribute("userId",user1.getUserId());
				session.setAttribute("user", user1);
				mav.setViewName("sys_admin");	
			}  
		}
		return mav;
	}
}
