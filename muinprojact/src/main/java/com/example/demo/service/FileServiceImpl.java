package com.example.demo.service;

import java.io.File;
import java.nio.file.Files;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.command.MemberFileVO;
import com.example.demo.mapper.FileMapper;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Service("FileService")
public class FileServiceImpl implements FileService {
	
	@Autowired
	FileMapper fileMapper;
	
	@Override
	public boolean imageCheck(File file) {
		 
		try {
			String contentType = Files.probeContentType(file.toPath());
			log.info("현재 파일 타입 : "+contentType);
			return contentType.startsWith("image");
		} catch (Exception e) {			
			e.printStackTrace();
		}		
		return false;
	}
	
	@Override
	public List<MemberFileVO> fileList(String id) {
		
		return fileMapper.fileList(id);
	}

}
