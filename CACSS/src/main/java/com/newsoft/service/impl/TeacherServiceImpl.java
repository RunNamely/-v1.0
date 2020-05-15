package com.newsoft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newsoft.dao.ITeacherDao;
import com.newsoft.pojo.Teacher;
import com.newsoft.service.ITeacherService;

@Service
public class TeacherServiceImpl implements ITeacherService {

	@Autowired
	private ITeacherDao iTeacher;
	
	@Override
	public List<Teacher> findTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		List<Teacher> findTeacher = iTeacher.findTeacher(teacher);
		return findTeacher;
	}

	@Override
	public boolean addTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		boolean addTeacher = iTeacher.addTeacher(teacher);
		return addTeacher;
	}

	@Override
	public boolean removeTeacher(int TeacherId) {
		// TODO Auto-generated method stub
		boolean removeTeacher = iTeacher.removeTeacher(TeacherId);
		return removeTeacher;
	}

	@Override
	public boolean deleteTeacher(List<String> list) {
		// TODO Auto-generated method stub
		boolean deleteTeacher = iTeacher.deleteTeacher(list);
		return deleteTeacher;
	}

	@Override
	public boolean updateTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		boolean updateTeacher = iTeacher.updateTeacher(teacher);
		return updateTeacher;
	}

	@Override
	public List<Teacher> findLikeTeacher(String TeacherTitle,String TeacherName) {
		// TODO Auto-generated method stub
		List<Teacher> findLikeTeacher = iTeacher.findLikeTeacher(TeacherTitle,TeacherName);
		return findLikeTeacher;
	}

}
