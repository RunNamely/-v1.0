package com.newsoft.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LookUp {
	private Integer CdType;
	private Integer CdId;
	private String CdName;
}
