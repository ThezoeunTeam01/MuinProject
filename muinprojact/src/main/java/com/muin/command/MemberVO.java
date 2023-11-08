package com.muin.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	private String id;
	private String pw;
	private String name;
	private String birth;
	private String address;
	private String phone;
	private String profile;
}
