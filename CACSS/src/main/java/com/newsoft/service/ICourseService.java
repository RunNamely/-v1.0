package com.newsoft.service;

import java.util.List;

import com.newsoft.pojo.Course;

public interface ICourseService {
		// 查询教室
		public List<Course> findCourse(Course course);
		// 增加教室
	    public boolean addCourse(Course course);
	    //单个删除教室
	  	public boolean removeCourse(int coursesId);
	  	//批量删除
	  	public boolean deleteCourse(List<String> list);
		// 更改教室
		public boolean updateCourse(Course course);
		//模糊搜索教室
		public List<Course> findLikeCourse(Integer CourseType,Integer RoomTypeId,String CourseName);
}
