package com.newsoft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newsoft.dao.IClassroomDao;
import com.newsoft.dao.ICourseDao;
import com.newsoft.pojo.Course;
import com.newsoft.service.ICourseService;

@Service
public class CourseServiceImpl implements ICourseService{
	@Autowired
	private ICourseDao iCourse;
	@Override
	public List<Course> findCourse(Course course) {
		// TODO Auto-generated method stub
		List<Course> findCourse = iCourse.findCourse(course);
		return findCourse;
	}

	@Override
	public boolean addCourse(Course course) {
		// TODO Auto-generated method stub
		boolean addCourse = iCourse.addCourse(course);
		return addCourse;
	}

	@Override
	public boolean removeCourse(int coursesId) {
		// TODO Auto-generated method stub
		boolean removeCourse = iCourse.removeCourse(coursesId);
		return removeCourse;
	}

	@Override
	public boolean deleteCourse(List<String> list) {
		// TODO Auto-generated method stub
		boolean deleteCourse = iCourse.deleteCourse(list);
		return deleteCourse;
	}

	@Override
	public boolean updateCourse(Course course) {
		// TODO Auto-generated method stub
		boolean updateCourse = iCourse.updateCourse(course);
		return updateCourse;
	}

	@Override
	public List<Course> findLikeCourse(Integer CourseType,Integer RoomTypeId,String CourseName) {
		// TODO Auto-generated method stub
		List<Course> findLikeCourse = iCourse.findLikeCourse(CourseType,RoomTypeId,CourseName);
		return findLikeCourse;
	}

}
