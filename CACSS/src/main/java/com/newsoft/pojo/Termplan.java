package com.newsoft.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Termplan {
	private Integer TermPlanId;
	private Integer CourseId;
	private Integer TermNum;
	private Integer WeekCount;
}
