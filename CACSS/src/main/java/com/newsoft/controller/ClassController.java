package com.newsoft.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.newsoft.pojo.Class;
import com.newsoft.service.IClassService;

@Controller
public class ClassController {
	@Autowired
	private IClassService ClassService;
	
	@Autowired
	private HttpSession session;
	
	
		// 跳转到教室显示主页面
		@RequestMapping(value = "/classlist", method = RequestMethod.GET)
		public ModelAndView classlist(Class classs) {
			ModelAndView mv = new ModelAndView();
			List<Class> findClass = ClassService.findClass(classs);
			int findClasssize = findClass.size();
			mv.addObject("findClass",findClass);
			mv.addObject("findClasssize",findClasssize);
			mv.setViewName("class-list");
			return mv;
		}
		
		//跳转到添加教室页面
	    @RequestMapping(value = "/classadd", method = RequestMethod.GET)
		public ModelAndView classadd() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("class-add");
			return mv;
		}
	    
	    // 添加教室
		@RequestMapping(value = "/AddClass", method = RequestMethod.POST)
		public ModelAndView addClass(Class classs) {
			ModelAndView mv = new ModelAndView();
			boolean addClass = ClassService.addClass(classs);
			mv.setViewName("class-add");
			return mv;
		}
		
		// 单个删除
		@GetMapping(value = "/ClassRemove")
		public ModelAndView remove(@RequestParam(value = "ClassId") int ClassId) {
			// 删除
			ClassService.removeClass(ClassId);
			ModelAndView mv = new ModelAndView();
			Class classs = new Class();
			List<Class> findClass = ClassService.findClass(classs);
			int findClasssize = findClass.size();
			mv.addObject("findClass",findClass);
			mv.addObject("findClasssize",findClasssize);
			mv.setViewName("class-list");
			return mv;
		}

		// 批量删除
		@RequestMapping(value = "/deleteClass", method = RequestMethod.GET)
		public ModelAndView deleteClass(String checkedID) {
			String[] split = checkedID.split(",");
			List<String> list = Arrays.asList(split);
			ClassService.deleteClass(list);
			ModelAndView mv = new ModelAndView();
			Class classs = new Class();
			List<Class> findClass = ClassService.findClass(classs);
			int findClasssize = findClass.size();
			mv.addObject("findClass",findClass);
			mv.addObject("findClasssize",findClasssize);
			mv.setViewName("class-list");
			return mv;
		}
		
		// 跳转到更新教室页面
		@GetMapping(value = "/ClassUpdate")
		public ModelAndView classupdate(@RequestParam(value = "ClassId") int ClassId) {
			ModelAndView mv = new ModelAndView();
			mv.addObject("ClassId", ClassId);
			mv.setViewName("class-update");
			return mv;
		}
		
		// 更新产品
		@RequestMapping(value = "/UpdateClass", method = RequestMethod.POST)
		public ModelAndView update(Class classs) {
			ModelAndView mv = new ModelAndView();
			ClassService.updateClass(classs);
			Class class2 = new Class();
			List<Class> findClass = ClassService.findClass(class2);
			int findClasssize = findClass.size();
			mv.addObject("findClass",findClass);
			mv.addObject("findClasssize",findClasssize);
			mv.setViewName("class-list");
			return mv;
		}
		
		// 跳转到教室显示主页面
		@RequestMapping(value = "/classlikelist", method = RequestMethod.GET)
		public ModelAndView classlikelist(String likename) {
			ModelAndView mv = new ModelAndView();
			List<Class> findLikeClass = ClassService.findLikeClass(likename);
			int findLikeClasssize = findLikeClass.size();
			mv.addObject("findClass",findLikeClass);
			mv.addObject("findClasssize",findLikeClasssize);
			mv.setViewName("class-list");
			return mv;
			}
	
}
