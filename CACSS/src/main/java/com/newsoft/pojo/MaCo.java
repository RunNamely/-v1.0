package com.newsoft.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MaCo {
	private Integer MajorId;
	private Integer CourseId; 
	private Integer StartTerm;
	private Integer EndTerm;
	private Integer TermIdStart;
	private Integer TermIdEnd;
	private Integer WeekCount;
}
