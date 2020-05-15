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

import com.newsoft.pojo.Course;
import com.newsoft.pojo.Teacher;
import com.newsoft.service.ICourseService;

@Controller
public class CourseController {
	@Autowired
	private ICourseService CourseService;
	
	@Autowired
	private HttpSession session;
	
		// 跳转到课程显示主页面
		@RequestMapping(value = "/courselist", method = RequestMethod.GET)
		public ModelAndView Courselist(Course course) {
			ModelAndView mv = new ModelAndView();
			List<Course> findCourse = CourseService.findCourse(course);
			int findCoursesize = findCourse.size();
			mv.addObject("findCourse",findCourse);
			mv.addObject("findCoursesize",findCoursesize);
			mv.setViewName("course-list");
			return mv;
		}
		
		//跳转到添加课程页面
	    @RequestMapping(value = "/courseadd", method = RequestMethod.GET)
		public ModelAndView Courseadd() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("course-add");
			return mv;
		}
	    
	    // 添加课程
		@RequestMapping(value = "/addCourse", method = RequestMethod.POST)
		public ModelAndView addCourse(Course course) {
			ModelAndView mv = new ModelAndView();
			boolean addCourse = CourseService.addCourse(course);
			mv.setViewName("course-add");
			return mv;
		}
		
		// 单个删除
		@GetMapping(value = "/courseRemove")
		public ModelAndView remove(@RequestParam(value = "CourseId") int CourseId) {
			CourseService.removeCourse(CourseId);
			ModelAndView mv = new ModelAndView();
			Course Courses = new Course();
			List<Course> findCourse = CourseService.findCourse(Courses);
			int findCoursesize = findCourse.size();
			mv.addObject("findCourse",findCourse);
			mv.addObject("findCoursesize",findCoursesize);
			mv.setViewName("course-list");
			return mv;
		}

		// 批量删除
		@RequestMapping(value = "/deleteCourse", method = RequestMethod.GET)
		public ModelAndView deleteCourse(String checkedID) {
			String[] split = checkedID.split(",");
			List<String> list = Arrays.asList(split);
			CourseService.deleteCourse(list);
			ModelAndView mv = new ModelAndView();
			Course Courses = new Course();
			List<Course> findCourse = CourseService.findCourse(Courses);
			int findCoursesize = findCourse.size();
			mv.addObject("findCourse",findCourse);
			mv.addObject("findCoursesize",findCoursesize);
			mv.setViewName("course-list");
			return mv;
		}
		
		// 跳转到更新课程页面
		@GetMapping(value = "/courseUpdate")
		public ModelAndView Courseupdate(@RequestParam(value = "CourseId") int CourseId) {
			ModelAndView mv = new ModelAndView();
			mv.addObject("CourseId", CourseId);
			mv.setViewName("course-update");
			return mv;
		}
		
		// 更新产品
		@RequestMapping(value = "/UpdateCourse", method = RequestMethod.POST)
		public ModelAndView update(Course Course) {
			ModelAndView mv = new ModelAndView();
			CourseService.updateCourse(Course);
			Course Course2 = new Course();
			List<Course> findCourse = CourseService.findCourse(Course2);
			int findCoursesize = findCourse.size();
			mv.addObject("findCourse",findCourse);
			mv.addObject("findCoursesize",findCoursesize);
			mv.setViewName("course-list");
			return mv;
		}
		
		// 跳转到课程显示主页面
		@RequestMapping(value = "/Courselikelist", method = RequestMethod.GET)
		public ModelAndView Courselikelist(Integer CourseType,Integer RoomTypeId,String CourseName) {
			ModelAndView mv = new ModelAndView();
			List<Course> findLikeCourse = new ArrayList<Course>();
			if (CourseType == null & RoomTypeId == null & CourseName.equals("")) {
				Course course = new Course();
				findLikeCourse = CourseService.findCourse(course);
			}else {
				findLikeCourse = CourseService.findLikeCourse(CourseType,RoomTypeId,CourseName);
			}
			int findLikeCoursesize = findLikeCourse.size();
			mv.addObject("findCourse",findLikeCourse);
			mv.addObject("findCoursesize",findLikeCoursesize);
			mv.setViewName("course-list");
			return mv;
			}
}
