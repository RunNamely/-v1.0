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

import com.newsoft.pojo.Classroom;
import com.newsoft.service.IClassroomService;

@Controller
public class ClassroomController {
	@Autowired
	private IClassroomService ClassroomService;
	
	@Autowired
	private HttpSession session;
	
	
		// 跳转到教室显示主页面
		@RequestMapping(value = "/classroomlist", method = RequestMethod.GET)
		public ModelAndView classroomlist(Classroom classroom) {
			ModelAndView mv = new ModelAndView();
			List<Classroom> findClassroom = ClassroomService.findClassroom(classroom);
			int findClassroomsize = findClassroom.size();
			mv.addObject("findClassroom",findClassroom);
			mv.addObject("findClassroomsize",findClassroomsize);
			mv.setViewName("classroom-list");
			return mv;
		}
		
		//跳转到添加教室页面
	    @RequestMapping(value = "/classroomadd", method = RequestMethod.GET)
		public ModelAndView classroomadd() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("classroom-add");
			return mv;
		}
	    
	    // 添加教室
		@RequestMapping(value = "/AddClassroom", method = RequestMethod.POST)
		public ModelAndView addClass(Classroom classroom) {
			ModelAndView mv = new ModelAndView();
			boolean addClassroom = ClassroomService.addClassroom(classroom);
			mv.setViewName("classroom-add");
			return mv;
		}
		
		// 单个删除
		@GetMapping(value = "/ClassroomRemove")
		public ModelAndView remove(@RequestParam(value = "CRoomId") int CRoomId) {
			// 删除
			ClassroomService.removeClassroom(CRoomId);
			ModelAndView mv = new ModelAndView();
			Classroom classroom = new Classroom();
			List<Classroom> findClassroom = ClassroomService.findClassroom(classroom);
			int findClassroomsize = findClassroom.size();
			mv.addObject("findClassroom",findClassroom);
			mv.addObject("findClassroomsize",findClassroomsize);
			mv.setViewName("classroom-list");
			return mv;
		}

		// 批量删除
		@RequestMapping(value = "/deleteClassroom", method = RequestMethod.GET)
		public ModelAndView deleteClassroom(String checkedID) {
			String[] split = checkedID.split(",");
			List<String> list = Arrays.asList(split);
			ClassroomService.deleteClassroom(list);
			ModelAndView mv = new ModelAndView();
			Classroom classroom = new Classroom();
			List<Classroom> findClassroom = ClassroomService.findClassroom(classroom);
			int findClassroomsize = findClassroom.size();
			mv.addObject("findClassroom",findClassroom);
			mv.addObject("findClassroomsize",findClassroomsize);
			mv.setViewName("classroom-list");
			return mv;
		}
		
		// 跳转到更新教室页面
		@GetMapping(value = "/ClassroomUpdate")
		public ModelAndView classroomupdate(@RequestParam(value = "CRoomId") int CRoomId) {
			ModelAndView mv = new ModelAndView();
			mv.addObject("CRoomId", CRoomId);
			mv.setViewName("classroom-update");
			return mv;
		}
		
		// 更新产品
		@RequestMapping(value = "/UpdateClassroom", method = RequestMethod.POST)
		public ModelAndView update(Classroom classroom) {
			ModelAndView mv = new ModelAndView();
			ClassroomService.updateClassroom(classroom);
			Classroom classroom2 = new Classroom();
			List<Classroom> findClassroom = ClassroomService.findClassroom(classroom2);
			int findClassroomsize = findClassroom.size();
			mv.addObject("findClassroom",findClassroom);
			mv.addObject("findClassroomsize",findClassroomsize);
			mv.setViewName("classroom-list");
			return mv;
		}
		
		// 跳转到教室显示主页面
		@RequestMapping(value = "/classroomlikelist", method = RequestMethod.GET)
		public ModelAndView classroomlikelist(String likename) {
			ModelAndView mv = new ModelAndView();
			List<Classroom> findLikeClassroom = ClassroomService.findLikeClassroom(likename);
			int findLikeClassroomsize = findLikeClassroom.size();
			mv.addObject("findClassroom",findLikeClassroom);
			mv.addObject("findClassroomsize",findLikeClassroomsize);
			mv.setViewName("classroom-list");
			return mv;
			}
	
}
