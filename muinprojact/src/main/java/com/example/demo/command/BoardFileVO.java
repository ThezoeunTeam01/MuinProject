package com.example.demo.command;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class BoardFileVO {
	private int bno;
	private String id;
	private String fileName;
	private String uuid;
	private String uploadPath;
	private Timestamp contentFileDate;
}