package com.example.demo.command;

import lombok.Data;

@Data
public class BoardVO {
   private int bno;
   private String id;
   private String category;
   private String title;
   private int price;
   private String content;
}