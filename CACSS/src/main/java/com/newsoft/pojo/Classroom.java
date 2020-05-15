package com.newsoft.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Classroom {
	private Integer CRoomId;
	private String CRoomCode;
	private String CRoomName;
	private Integer CAreaId;
	private Integer RoomTypeId;
	private Integer DepartmentId;
	private Integer CRoomSeatingCapacity;
	private Integer DeleteFlag;
}
