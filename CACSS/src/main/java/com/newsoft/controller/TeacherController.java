package com.newsoft.controller;

import java.util.ArrayList;
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

import com.newsoft.pojo.Teacher;
import com.newsoft.service.ITeacherService;

@Controller
public class TeacherController {
	@Autowired
	private ITeacherService TeacherService;
	
	@Autowired
	private HttpSession session;
	
	
		// 跳转到教师显示主页面
		@RequestMapping(value = "/teacherlist", method = RequestMethod.GET)
		public ModelAndView Teacherlist(Teacher teacher) {
			ModelAndView mv = new ModelAndView();
			List<Teacher> findTeacher = TeacherService.findTeacher(teacher);
			int findTeachersize = findTeacher.size();
			mv.addObject("findTeacher",findTeacher);
			mv.addObject("findTeachersize",findTeachersize);
			mv.setViewName("teacher-list");
			return mv;
		}
		
		//跳转到添加教师页面
	    @RequestMapping(value = "/teacheradd", method = RequestMethod.GET)
		public ModelAndView Teacheradd() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("teacher-add");
			return mv;
		}
	    
	    // 添加教师
		@RequestMapping(value = "/addTeacher", method = RequestMethod.POST)
		public ModelAndView addTeacher(Teacher teacher) {
			ModelAndView mv = new ModelAndView();
			boolean addTeacher = TeacherService.addTeacher(teacher);
			mv.setViewName("teacher-add");
			return mv;
		}
		
		// 单个删除
		@GetMapping(value = "/teacherRemove")
		public ModelAndView remove(@RequestParam(value = "TeacherId") int TeacherId) {
			TeacherService.removeTeacher(TeacherId);
			ModelAndView mv = new ModelAndView();
			Teacher Teachers = new Teacher();
			List<Teacher> findTeacher = TeacherService.findTeacher(Teachers);
			int findTeachersize = findTeacher.size();
			mv.addObject("findTeacher",findTeacher);
			mv.addObject("findTeachersize",findTeachersize);
			mv.setViewName("teacher-list");
			return mv;
		}

		// 批量删除
		@RequestMapping(value = "/deleteTeacher", method = RequestMethod.GET)
		public ModelAndView deleteTeacher(String checkedID) {
			String[] split = checkedID.split(",");
			List<String> list = Arrays.asList(split);
			TeacherService.deleteTeacher(list);
			ModelAndView mv = new ModelAndView();
			Teacher Teachers = new Teacher();
			List<Teacher> findTeacher = TeacherService.findTeacher(Teachers);
			int findTeachersize = findTeacher.size();
			mv.addObject("findTeacher",findTeacher);
			mv.addObject("findTeachersize",findTeachersize);
			mv.setViewName("teacher-list");
			return mv;
		}
		
		// 跳转到更新教师页面
		@GetMapping(value = "/TeacherUpdate")
		public ModelAndView Teacherupdate(@RequestParam(value = "TeacherId") int TeacherId) {
			ModelAndView mv = new ModelAndView();
			mv.addObject("TeacherId", TeacherId);
			mv.setViewName("teacher-update");
			return mv;
		}
		
		// 更新产品
		@RequestMapping(value = "/UpdateTeacher", method = RequestMethod.POST)
		public ModelAndView update(Teacher teacher) {
			ModelAndView mv = new ModelAndView();
			TeacherService.updateTeacher(teacher);
			Teacher Teacher2 = new Teacher();
			List<Teacher> findTeacher = TeacherService.findTeacher(Teacher2);
			int findTeachersize = findTeacher.size();
			mv.addObject("findTeacher",findTeacher);
			mv.addObject("findTeachersize",findTeachersize);
			mv.setViewName("teacher-list");
			return mv;
		}
		
		// 跳转到教师显示主页面
		@RequestMapping(value = "/Teacherlikelist", method = RequestMethod.GET)
		public ModelAndView Teacherlikelist(String TeacherTitle,String TeacherName) {
			ModelAndView mv = new ModelAndView();
			List<Teacher> findLikeTeacher = new ArrayList<Teacher>();
			if (TeacherTitle.equals("") & TeacherName.equals("")) {
				Teacher teacher = new Teacher();
				findLikeTeacher = TeacherService.findTeacher(teacher);
			}else {
			    findLikeTeacher = TeacherService.findLikeTeacher(TeacherTitle,TeacherName);
			}
			int findLikeTeachersize = findLikeTeacher.size();
			mv.addObject("findTeacher",findLikeTeacher);
			mv.addObject("findTeachersize",findLikeTeachersize);
			mv.setViewName("teacher-list");
			return mv;
			}
}
