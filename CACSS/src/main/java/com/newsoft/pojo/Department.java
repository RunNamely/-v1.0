package com.newsoft.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Department {
	private Integer DepartmentId;
	private String DepartmentName;
	private String DepartmentCode;
	private String Describe;
}
