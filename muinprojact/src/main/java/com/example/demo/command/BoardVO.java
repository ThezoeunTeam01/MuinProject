package com.example.demo.command;

import java.sql.Timestamp;
import java.util.List;

import lombok.Data;

@Data
public class BoardVO {
   private int bno;
   private String id;
   private String category;
   private String title;
   private int price;
   private String content;
   private Timestamp contentDate;
   
   private List<BoardFileVO> boardFileList;
}