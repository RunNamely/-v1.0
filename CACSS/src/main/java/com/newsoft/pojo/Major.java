package com.newsoft.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Major {
	private Integer MajorId;
	private String MajorName;
	private String MajorCode;
	private String MajorDescribe;
	private Integer YearSize;
}
