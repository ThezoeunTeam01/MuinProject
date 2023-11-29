package com.example.demo.command;

import java.util.List;

import lombok.Data;

@Data
public class UpdateBoardDTO {
	private BoardVO vo;
	private List<BoardFileVO> fileVo;
}
