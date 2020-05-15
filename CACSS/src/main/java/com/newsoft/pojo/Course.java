package com.newsoft.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Course {
	private Integer CourseId;
	private String CourseCode;
	private String CourseName;
	private Integer CourseType;
	private Integer CourseLesson;
	private Integer RoomTypeId;
}
