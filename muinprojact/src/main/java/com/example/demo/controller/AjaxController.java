package com.example.demo.controller;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.command.FileDTO;
import com.example.demo.service.FileService;
import com.example.demo.service.MemberService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
@RequestMapping("/ajax/*")
public class AjaxController {
   
   @Autowired
   MemberService memberService;
   
   @Autowired
   FileService fileService;
  
   
   @PostMapping("/idCheck")
   public int idCheck(@RequestParam("id") String id) {
      int result = memberService.idCheck(id);
      return result;
   }
   @PostMapping(value = "/uploadAjax", produces = MediaType.APPLICATION_JSON_VALUE)
   public ResponseEntity<List<FileDTO>> uploadAjax(MultipartFile[] uploadFile) {
	   
	   List<FileDTO> list = new ArrayList<>();
	   
	   String uploadFolder = "C:/muin/profile";
	   
	   for(MultipartFile multipartFile: uploadFile) {
		   
		   FileDTO fileDTO = new FileDTO();
		   
		   fileDTO.setFileName(multipartFile.getOriginalFilename());
		   
		   UUID uuid = UUID.randomUUID();
		   String uuidFileName = uuid.toString()+"_"+multipartFile.getOriginalFilename();
		 
		   
		   File fileSave = new File(uploadFolder, uuidFileName);
		   
		   try {
			   fileDTO.setUuid(uuidFileName);
			   fileDTO.setUploadPath(uploadFolder); 			   
			   
			   if(fileService.imageCheck(fileSave)) {
				   multipartFile.transferTo(fileSave);
				   list.add(fileDTO);
			   }
			   
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				log.error(e.getMessage());
			}
	   }
	   return new ResponseEntity<>(list, HttpStatus.OK);
   }
   
}