package com.example.demo.command;

import java.util.List;

import lombok.Data;

@Data
public class BoardDTO {
	private List<MemberFileVO> memberFileVO;
	private BoardVO boardVO;
	private List<BoardFileVO> boardFileVO;
	

}
