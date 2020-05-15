package com.newsoft.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Teacher {
	private Integer TeacherId;
	private String TeacherCode;
	private String TeacherName;
	private Integer DepartmentId;
	private String MajorStr;
	private String TeacherTitle;
	private Integer Age;
	private String Sex;
	private String Describe;
	private String DeleteFlag;
	private String birth;
}
