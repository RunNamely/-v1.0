package com.newsoft.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Class {
	private Integer ClassId;
	private String ClassCode;
	private String ClassName;
	private Integer ClassSize;
	private Integer DepartmentId;
	private Integer MajorId;
	private String Describe;
	private String DeleteFlag;
	private Integer InYear;
	private Integer CAreaId;
}
