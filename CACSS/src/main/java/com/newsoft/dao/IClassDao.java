package com.newsoft.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.newsoft.pojo.Class;

@Mapper
public interface IClassDao {
	// 查询班级
	public List<Class> findClass(Class classs);
	// 增加班级
    public boolean addClass(Class classs);
    //单个删除班级
	public boolean removeClass(int ClassId);
	//批量删除
	public boolean deleteClass(List<String> list);
	// 更改班级
	public boolean updateClass(Class classs);
	//模糊搜索班级
	public List<Class> findLikeClass(String likename);
}
