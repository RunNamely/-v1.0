package com.newsoft.service;

import java.util.List;

import com.newsoft.pojo.Classroom;

public interface IClassroomService {

	// 查询教室
	public List<Classroom> findClassroom(Classroom classroom);
	// 增加教室
    public boolean addClassroom(Classroom classroom);
    //单个删除教室
  	public boolean removeClassroom(int CRoomId);
  	//批量删除
  	public boolean deleteClassroom(List<String> list);
	// 更改教室
	public boolean updateClassroom(Classroom classroom);
	//模糊搜索教室
	public List<Classroom> findLikeClassroom(String likename);
}
