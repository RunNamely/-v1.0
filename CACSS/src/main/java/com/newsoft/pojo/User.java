package com.newsoft.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
	private Integer UserId;				//ID标识
	private String  UserLoginName;		//登录账号
	private String  UserPass;			//密码
	private String  UserName;			//姓名
	private String  UserType;			//用户角色
	private String  Sex;				//性别
	private String  Mobile;				//手机
	private String  Email;				//邮箱
	private String  Beizhu;				//备注
}
