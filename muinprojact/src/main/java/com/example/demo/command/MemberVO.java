package com.example.demo.command;


import java.sql.Timestamp;

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
	private Timestamp registerdate;
}
