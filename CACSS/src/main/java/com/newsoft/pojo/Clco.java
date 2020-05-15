package com.newsoft.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Clco {
	private Integer ClCoId;
	private Integer ClassId;
	private Integer CourseId;
	private Integer TermId;
	private Integer TeacherId;
	private Integer WeekCount;
	private String CcStatus;
	private String CcType;
}
