package com.newsoft.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TsTemp {
	private Integer TermId;
	private Integer TeacherId;
	private Integer CdId;
	private String CdName;
	private String week1;
	private String week2;
	private String week3;
	private String week4;
	private String week5;
}
