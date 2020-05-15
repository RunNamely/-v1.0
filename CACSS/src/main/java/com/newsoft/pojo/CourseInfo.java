package com.newsoft.pojo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CourseInfo {
	private Integer CInfoId;
	private Integer TermId;
	private Integer ClassId;
	private Integer CourseId;
	private Integer TeacherId;
	private Integer ClassRoomId;
	private Integer Weeks;
	private Integer LessonOrders;
	private String CInfoType;
	private Date CreateDate;
}
