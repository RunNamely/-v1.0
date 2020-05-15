package com.newsoft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newsoft.dao.IClassroomDao;
import com.newsoft.pojo.Classroom;
import com.newsoft.service.IClassroomService;

@Service
public class ClassroomServiceImpl implements IClassroomService{
	@Autowired
	private IClassroomDao iClassroom;

	@Override
	public List<Classroom> findClassroom(Classroom classroom) {
		List<Classroom> findClassroom = iClassroom.findClassroom(classroom);
		return findClassroom;
	}

	@Override
	public boolean addClassroom(Classroom classroom) {
		boolean addClassroom = iClassroom.addClassroom(classroom);
		return addClassroom;
	}

	@Override
	public boolean removeClassroom(int CRoomId) {
		boolean removeClassroom = iClassroom.removeClassroom(CRoomId);
		return removeClassroom;
	}

	@Override
	public boolean deleteClassroom(List<String> list) {
		boolean deleteClassroom = iClassroom.deleteClassroom(list);
		return deleteClassroom;
	}

	@Override
	public boolean updateClassroom(Classroom classroom) {
		boolean updateClassroom = iClassroom.updateClassroom(classroom);
		return updateClassroom;
	}

	@Override
	public List<Classroom> findLikeClassroom(String likename) {
		// TODO Auto-generated method stub
		List<Classroom> findLikeClassroom = iClassroom.findLikeClassroom(likename);
		return findLikeClassroom;
	}
	
	
}
