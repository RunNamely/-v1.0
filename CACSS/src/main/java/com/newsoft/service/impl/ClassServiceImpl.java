package com.newsoft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newsoft.dao.IClassDao;
import com.newsoft.pojo.Class;
import com.newsoft.service.IClassService;

@Service
public class ClassServiceImpl implements IClassService{
	@Autowired
	private IClassDao iClass;
	
	@Override
	public List<Class> findClass(Class classs) {
		// TODO Auto-generated method stub
		List<Class> findClass = iClass.findClass(classs);
		return findClass;
	}

	@Override
	public boolean addClass(Class classs) {
		// TODO Auto-generated method stub
		boolean addClass = iClass.addClass(classs);
		return addClass;
	}

	@Override
	public boolean removeClass(int ClassId) {
		// TODO Auto-generated method stub
		boolean removeClass = iClass.removeClass(ClassId);
		return removeClass;
	}

	@Override
	public boolean deleteClass(List<String> list) {
		// TODO Auto-generated method stub
		boolean deleteClass = iClass.deleteClass(list);
		return deleteClass;
	}

	@Override
	public boolean updateClass(Class classs) {
		// TODO Auto-generated method stub
		boolean updateClass = iClass.updateClass(classs);
		return updateClass;
	}

	@Override
	public List<Class> findLikeClass(String likename) {
		// TODO Auto-generated method stub
		List<Class> findLikeClass = iClass.findLikeClass(likename);
		return findLikeClass;
	}

}
