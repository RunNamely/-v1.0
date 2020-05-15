package com.newsoft.service;

import java.util.List;

import com.newsoft.pojo.Teacher;

public interface ITeacherService {
		// 查询教师
		public List<Teacher> findTeacher(Teacher teacher);
		// 增加教师
	    public boolean addTeacher(Teacher teacher);
	    //单个删除教师
		public boolean removeTeacher(int TeacherId);
		//批量删除
		public boolean deleteTeacher(List<String> list);
		// 更改教师
		public boolean updateTeacher(Teacher teacher);
		//模糊搜索教师
		public List<Teacher> findLikeTeacher(String TeacherTitle,String TeacherName);
}
