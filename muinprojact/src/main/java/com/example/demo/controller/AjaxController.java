package com.example.demo.controller;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.command.FileDTO;
import com.example.demo.service.FileService;
import com.example.demo.service.MemberService;

import lombok.extern.log4j.Log4j2;
import net.coobird.thumbnailator.Thumbnailator;

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
   // 1. 년월일 폴더 생성을 위한 함수생성... 
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
   @PostMapping(value = "/uploadAjax", produces = MediaType.APPLICATION_JSON_VALUE)	// 기존은 responseBody가 있었음
   public ResponseEntity<List<FileDTO>> uploadAjax(MultipartFile[] uploadFile) {
	   
	   
	   List<FileDTO> list = new ArrayList<>();
	    String uploadFolder = "/Users/eongdeong-ihaejeogdan/Desktop/springboot/test";
   		//#2. 경로 정보를 얻기 위한 메서드 구현... 
 		String uploadFolerPath = getFolder();  //년월일 폴더 생성... 
 		File uploadPath = new File(uploadFolder, uploadFolerPath);
 		log.info("upload Path : "+uploadPath);
 		if(uploadPath.exists() == false) {  //폴더가 없다면... 
			uploadPath.mkdirs();            //폴더들을 생성!!
		}
	   
	   for(MultipartFile multipartFile: uploadFile) {
		   
		   FileDTO fileDTO = new FileDTO();
		   String uploadFileName = multipartFile.getOriginalFilename();
		   
		   
		   fileDTO.setFileName(uploadFileName);
		   
		   
		   UUID uuid = UUID.randomUUID();   //랜덤 UUID 생성... 
		   uploadFileName = uuid.toString() + "_"+ uploadFileName;
		   File saveFile = new File(uploadPath, uploadFileName);
		   		   
		   try {
			   
			   fileDTO.setUuid(uuid.toString());
			   fileDTO.setUploadPath(uploadFolerPath);
			   
			   if(fileService.imageCheck(saveFile)) {
				   multipartFile.transferTo(saveFile);
				   
				   FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_"+uploadFileName));
				   Thumbnailator.createThumbnail(multipartFile.getInputStream(),thumbnail,100,100);
				   thumbnail.close();
				   
				   list.add(fileDTO);			   
			   }
			   
			} catch (IllegalStateException | IOException e) {
				log.error(e.getMessage());
			}
	   }
	   return new ResponseEntity<>(list, HttpStatus.OK);
   }
   
   

   
}